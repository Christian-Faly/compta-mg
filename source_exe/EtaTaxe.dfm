�
 TFETATTAXE 0=7 TPF0
TFEtatTaxe	FEtatTaxeLeftTop� WidthyHeight�HorzScrollBar.Position� VertScrollBar.Position%Caption	FEtatTaxeColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	ScaledPixelsPerInch`
TextHeight 	TQuickRep	QuickRep1Left<�TopJWidth�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep1BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterSmallPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand2LeftTop� WidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ XUUUǀ
@ BandTyperbPageFooter 
TQRSysData
QRSysData3Left TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@                ��@ �������@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand3LeftTop� WidthoHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ XUUUǀ
@ BandType	rbSummary TQRExprQRExpr5Left�TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����W�	@ �������@     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	  TQRShape	QRShape34LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@ ����*��	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape35Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ `UUUU��	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape36Left{Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ XUUUծ�	@ ������� � �������@ ShapeqrsVertLine  TQRExprQRExpr30LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*V�	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression&Sum(DetTaxe.SMontant*100/DetTaxe.Taux)Mask#,##0FontSize	  TQRExprQRExpr31Left%TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression5Sum(DetTaxe.SMontant*(100+DetTaxe.Taux)/DetTaxe.Taux)Mask#,##0FontSize	   TQRBandQRBand4LeftTopWidthoHeight6Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@ XUUUǀ
@ BandTyperbTitle TQRLabel	QRLabel24Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@     f�@ �����J�@ XUUUU��@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   Taxe déductibleColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData4Left�TopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@ XUUUU��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  TQRLabel	QRLabel69LeftTop$Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
Exercice :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText52Left=Top%Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ `UUUU��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel75LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg : ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText63Left+TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����6�@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText87LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����J�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel240Left�Top"Width^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ XUUUU��@ XUUUUq�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEtaTaxe QuickRep1ColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand5LeftTopTWidthoHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ XUUUǀ
@ BandTyperbColumnHeader TQRLabel	QRLabel25Left� TopWidth^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      m�@ ������� @ XUUUUq�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionFournisseurColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel26LeftSTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ 8��8���@ �q�q�@ p�q�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   N° FaColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShapeQRShape7Left)TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU��@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel27LeftvTopWidth)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU!�@      ��@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionDateColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize	  TQRLabel	QRLabel28LeftTopWidthnHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ �������@ ������� @ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   Libellé de l'op°ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShapeQRShape8Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU�@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel29LeftTopWidth%HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ �q�q�@ �q�q�@  �q���@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionN.I.FColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel30LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ PUUUU��	@ �q�q�@ �8��8N�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionT.T.CColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShapeQRShape9Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU��	@ ������� @ �������@ ShapeqrsVertLine  TQRShape	QRShape10LeftrTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      ��@ ������� @ �������@ ShapeqrsVertLine  TQRShape	QRShape11LeftNTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      ��@           �������@ ShapeqrsVertLine  TQRLabel	QRLabel31Left/TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ x�qW�@ �q�q�@ p�q�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionStat.ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel36Left�TopWidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ �8��8��	@ �q�q�@ 8��8��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionT.V.AColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel38LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ ��8��2�	@ �q�q�@ �8��8N�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionH.TColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape19Left{TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUծ�	@ ������� @ �������@ ShapeqrsVertLine  TQRShape	QRShape21LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUUt�	@ ������� @ �������@ ShapeqrsVertLine  TQRShapeQRShape5LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ `UUUUt�@ ������� @ �������@ ShapeqrsVertLine   TQRBandQRBand6LeftTopwWidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesTUUUUU5�@ XUUUǀ
@ BandTyperbDetail 	TQRDBText	QRDBText4LeftQTop Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@           �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape12LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ `UUUUt�@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape13Left)Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU��@ �������� �������@ ShapeqrsVertLine  TQRShape	QRShape14LeftsTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU+�@ �������� ������� @ ShapeqrsVertLine  	TQRDBText	QRDBText5LeftuTop Width&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      z�@           �����Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText	QRDBText6Left� Top Width_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ XUUUU�@           ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNomFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparent	WordWrap	FontSize	  TQRShape	QRShape15LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ ����*��	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape16LeftNTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����"�@      ��@      ��� �������@ ShapeqrsVertLine  TQRShape	QRShape17Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      �@ ������� � �������@ ShapeqrsVertLine  	TQRDBText
QRDBText12Left�Top WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��	@           `UUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhite	DataFieldSMontantFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Mask#,##0
ParentFontTransparent	WordWrap	FontSize	  	TQRDBText
QRDBText13Left-Top Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      Ԕ@           �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldStatistiqueFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText10LeftTop Width#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����J�@           �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNIFFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText	QRDBText8LeftTop WidthnHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      ��@           ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldLibelleFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape28Left{Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUծ�	@ �������� �������@ ShapeqrsVertLine  TQRShape	QRShape33Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ `UUUU��	@ ������� � �������@ ShapeqrsVertLine  TQRExprQRExpr18LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*V�	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression!DetTaxe.SMontant*100/DetTaxe.TauxMask#,##0FontSize	  TQRExprQRExpr27Left%TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression0DetTaxe.SMontant*(100+DetTaxe.Taux)/DetTaxe.TauxMask#,##0FontSize	   TQRBandQRBand13LeftTop� WidthoHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ XUUUǀ
@ BandTyperbGroupFooter TQRExprQRExpr10Left� TopWidth~HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      ��@      \�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
Expression'Total  ' + DetTaxe.Compte FontSize
  TQRExprQRExpr9Left�TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����W�	@ �������@     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	  TQRShape	QRShape38LeftTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ ����*��	@           �������@ ShapeqrsVertLine  TQRShape	QRShape39Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU��	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape40Left{Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ XUUUծ�	@           �������@ ShapeqrsVertLine  TQRExprQRExpr28LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*V�	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression&Sum(DetTaxe.SMontant*100/DetTaxe.Taux)Mask#,##0FontSize	  TQRExprQRExpr29Left%TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression5Sum(DetTaxe.SMontant*(100+DetTaxe.Taux)/DetTaxe.Taux)Mask#,##0FontSize	   TQRGroupQRGroup2LeftTopgWidthoHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values��������@ XUUUǀ
@ 
ExpressionDetTaxe.Compte
FooterBandQRBand13Master	QuickRep1ReprintOnNewPage TQRExprQRExpr11LeftTop Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����J�@           XUUUU{�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColor��� ResetAfterPrintTransparentWordWrap	
Expression'DetTaxe.Compte + ' ' + DetTaxe.IntituleFontSize
    	TQuickRep	QuickRep9Left<�Top��Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep9BeforePrintDescription.Strings|This report shows how to create a master/detail report from a TQuery component and use multiple TQRGroups in the same report Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty	
SnapToGrid	UnitsMMZoomd TQRBandQRBand19Left&TopWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ PUUUU��	@ BandTyperbTitle TQRShape
QRShape241LeftTop� Width�HeightUFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUUU�@ XUUUU��@ ������	@ ShapeqrsRectangle  TQRLabel
QRLabel307LeftzTopRWidth(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������j�@      �@UUUUUU��@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionSUR LA VALEUR AJOUTEE(TVA)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel
QRLabel308Left3TopnWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU�@UUUUUU��@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Déclaration MensuelleColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel309Left�TopnWidth*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��	@UUUUUU��@      @�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionMOIS :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel310Left�Top:Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������j�@������J�	@UUUUUUu�@ XUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionDECLARATION DE LA TAXEColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel
QRLabel311Left�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@UUUUUUM�@VUUUUU��@      ��@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaptionREPOBLIKAN'I MADAGASIKARAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel
QRLabel312Left�Top"Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@�������@UUUUUUq�@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaption#Tanindrazana-Fahafahana-FandrosoanaColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape242LeftQTop1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU� @ PUUUU��@ XUUUU��@ �������@ Shape
qrsHorLine  TQRLabel
QRLabel313LeftTopFWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      @�@UUUUUU5�@      Ț@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption'MINISTERE DU BUDGET ET DU DEVELOPPEMENTColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRShape
QRShape245LeftdTophHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU� @ �����J�@ XUUUU��@ �������@ Shape
qrsHorLine  TQRLabel
QRLabel314LeftTop� WidthpHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ XUUUUU�@ XUUUUU�@������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionBureau de recette :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel315Left�Top� WidthRHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��	@ XUUUUU�@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTRIMESTRE :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel316LeftmTop� WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������n�@      ��@������ڻ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTrimestrielleColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel318Left
Top� Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@�������@������ڻ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionNature de la profession :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel319LeftTop� Width9HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��@      �@      Ж@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Adresse :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel370LeftTop� Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��@UUUUUU��@�������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption#   RAISON SOCIALE ou Nom et prénoms :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText44Left� Top� Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@�������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldActiviteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel371LeftTop� WidthkHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��@������R�@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionNom commercial :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel372Left� Top� WidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@      0�@      T�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption4   Société Commerciale et Industrielle de Madagascar ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel1LeftETopWWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ��@      0�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionDES PROVINCES AUTONOMESColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabelQRLabel2LeftTopmWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@��������@������2�@      Ț@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption(DIRECTION GENERALE DES REGIES FINANCIERSColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabelQRLabel3Left�TopnWidth'HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	Size.Values ������@ XUUUU��	@ XUUUU��@     `�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionQRLabel3ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel4Left�Top� Width'HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	Size.Values ������@ XUUUU��	@ XUUUUU�@     `�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionQRLabel4ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel5LeftnTopmWidth6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@������2�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionANNEE :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel6LeftoTopWidth6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU�	@ ������@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionANNEE :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel7Left3TopmWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU3�	@������2�@UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionQRLabel7ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel8Left8Top� Width:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������ڻ	@ XUUUUU�@UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionQRLabel8ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel9Left�TopmWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@������2�@UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionQRLabel9ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel10Left�TopWidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@TUUUUU��	@ ������@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	QRLabel10ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText75Left�Top� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��	@      x�@VUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel105Left:Top� Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@      x�@      (�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption"   Numéro d'identification fiscal : ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel106Left�TopWidth(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��	@������*�@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   N° 601ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText	QRDBText9LeftHTop� Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@UUUUUU��@ XUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText11Left}Top� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ XUUUU]�@ �����R�@ PUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel118Left|Top� Width`HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ �����
�@ XUUUUU�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionDFGE AmparibeColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
   TQRBandQRBand20Left&TopWidth�HeightdFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      h�	@ PUUUU��	@ BandType	rbSummary TQRShape
QRShape246LeftTopWidth�Height� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values PUUUU��@       �@ `UUUU��@      �	@ ShapeqrsRectangle  TQRShape
QRShape251LeftTop9Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@ �������@      Ж@ `UUUU��	@ Shape
qrsHorLine  TQRLabel
QRLabel373LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����*�@ XUUUU��@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
OPERATIONSColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape252Left�TopWidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values PUUUU��@      Ԕ	@       �@ �������@ ShapeqrsVertLine  TQRShape
QRShape253Left� TopWidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@       �@ �������@ ShapeqrsVertLine  TQRShape
QRShape257LeftTopWidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      0�@      V�	@       �@ �������@ ShapeqrsVertLine  TQRShape
QRShape258Left!TopWidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values PUUUU��@ XUUUU?�	@       �@ �������@ ShapeqrsVertLine  TQRShape
QRShape280Left]Top%WidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU��@ �������@ �������@ ShapeqrsVertLine  TQRShape
QRShape282Left� Top Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values       �@      ��@ XUUUUU�@      ��@ Shape
qrsHorLine  TQRLabel
QRLabel374LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ��@ XUUUUU�@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionChiffre d'affairesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel375LeftTop(WidthVHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������@ �������@ �������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTaxable (a)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel376LeftaTop(Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����~�@ �������@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionNon Taxable(b)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel377Left�TopWidth]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ҕ	@ XUUUUU�@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTotalColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel378Left&TopWidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ ������	@ XUUUUU�@ �����z�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTauxColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel379Left�TopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������	@ XUUUUU�@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTVA CompriseColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel380Left�Top%Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ҕ	@ �������@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption(c)=(a)+(b)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel381Left%Top=WidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ��	@ XUUUUe�@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption0%ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel382Left%Top&Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ��	@ PUUUU�@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption(d)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel383LeftTop@Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@ XUUUUU�@������_�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   1. Opération à l'exportationColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel384LeftTop� Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@UUUUUUE�@ �����ڻ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   3. Autres régularisationsColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel385LeftTopRWidth|HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@UUUUUU��@������
�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   2. Opérations localesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel386Left'TopbWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      `�@UUUUUU��@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   - à des personnes assujettiesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel387Left&ToptWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU�@UUUUUUu�@������N�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption"   - à des personnes non assujettiesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape283LeftTop� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values       �@ XUUUUU�@ �������@ `UUUU��	@ Shape
qrsHorLine  TQRLabel
QRLabel388LeftTop@Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������@ XUUUUU�@ ������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel388ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel389LeftdTop@Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����z�@ XUUUUU�@ ������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel389ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel390Left�Top@WidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      Ж	@ XUUUUU�@ �����z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel390ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel392LeftTop`Width\HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ��@       �@ �����j�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel392ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel393Left�Top`WidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      Ж	@       �@ �����z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel393ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel394Left%Top`WidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ��	@       �@ �����z�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
QRLabel394ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel395Left�Top`WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@       �@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel395ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel396Left ToptWidth]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUUU�@UUUUUUu�@ ������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel396ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel397LeftbTopuWidth_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@     (�@      Ț@ �����Z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel397ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel398Left�TopuWidth[HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU{�	@      Ț@ XUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel398ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel399Left'TopuWidthWHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU;�	@      Ț@      0�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
QRLabel399ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel400Left�TopvWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@�������@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel400ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel401Left� Top� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��@��������@UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotalColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel402Left Top� Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUUU�@��������@ ������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel402ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel403LeftcTop� Width_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��@��������@ �����Z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel403ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel404Left�Top� Width\HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����&�	@��������@ �����j�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel404ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel405Left�Top� WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@��������@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel405ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape
QRShape284LeftTop� Width�Height� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      Ț@ XUUUUU�@      ��@      �	@ ShapeqrsRectangle  TQRShape
QRShape285LeftTop� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUUU�@      ��@      �	@ Shape
qrsHorLine  TQRShape
QRShape289LeftlTop� WidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@ XUUUU��@ XUUUU��@ XUUUUU� @ ShapeqrsVertLine  TQRShape
QRShape292LefthTop� WidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������	@      ��@ XUUUUU� @ ShapeqrsVertLine  TQRShape
QRShape293Left�Top� WidthHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@ XUUUU_�	@ XUUUU��@ XUUUUU� @ ShapeqrsVertLine  TQRShape
QRShape294LeftTop�Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU� @ XUUUUU�@ XUUUU��	@      �	@ Shape
qrsHorLine  TQRShape
QRShape295LeftTopIWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@ XUUUUU�@ �������@      �	@ Shape
qrsHorLine  TQRShape
QRShape296LeftTopdWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU� @ XUUUUU�@ �����z�@      �	@ Shape
qrsHorLine  TQRShape
QRShape297LeftTopzWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU� @ XUUUUU�@     �@      �	@ Shape
qrsHorLine  TQRLabel
QRLabel406LefttTop� WidthTHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUu�@      ��@      @�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
DEDUCTIONSColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabelLocauxLeft�Top� Width+HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      �	@UUUUUU��@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionLocauxColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel407Left�Top� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@UUUUUU��@UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotalColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel408LeftTop� WidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��@UUUUUU]�@      ؒ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   5.Taxe déductible :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel409Left?Top
Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@�������@�������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption1   5. 1. - Sur des biens d'équipements et immeublesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel411Left?TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@      ��@      X�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption5. 2. - Sur les autres biens ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel412Left?Top*Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@UUUUUU�@UUUUUUM�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption5. 3. - Sur les servicesColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel413LeftTop:Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@��������@ �����6�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption(   6. Sur les biens destinés à la reventeColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel414LeftTopPWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��@������?�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption7. Total de la colonne (h)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel415Left� TophWidth.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ �����J�@       �@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption6   .% TVA deductible de la période ( (7) x taux prorata)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel416LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@������V�@ ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption0   9. Report de crédit de la période précédenteColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel417LeftTop�Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@UUUUUU��	@UUUUUU}�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption"10. TOTAL TVA DEDUCTIBLE (8) + (9)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape298LeftTop�WidthHeightRFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values `UUUU��@ XUUUUU�@ �����,�	@ �������	@ ShapeqrsRectangle  TQRLabel
QRLabel418LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��@      Ԕ	@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption0   11. Total TVA à verser [Total colonne (e)]-(10)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel419LeftTop�Width4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@UUUUUUs�	@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption8   12. Total de de crédit de TVA (10)- [Total colonne (e)]ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel420LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@UUUUUUg�	@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption)   13. Remboursement de crédit TVA demandéColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel421LeftTop�Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@�������	@      Ԕ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption)   14. Crédit de TVA reportable : (12)-(13)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape299Left|Top�WidthHeightRFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values `UUUU��@ �����Z�@ �����,�	@ XUUUUU� @ ShapeqrsVertLine  TQRLabel
QRLabel422Left�Top&Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��	@ PUUUU�@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption(e)=(a)x(d)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel423LeftaTop� Width`HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����~�@ XUUUUE�@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel423ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel424Left�Top� WidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU{�	@ XUUUUE�@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel424ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel425Left'Top� WidthXHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU;�	@ ������@ `UUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
QRLabel425ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel426Left�Top� WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@      ��@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel426ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel427Left�Top
WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��	@ ������@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel427ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel428LeftTop
WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUC�	@�������@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel428ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel429Left�Top	WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@UUUUUUI�@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel429ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel430Left�TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      �	@ �����ڻ@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel430ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel431LeftTopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUC�	@      ��@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel431ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel432Left�TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@������޹@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel432ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel433Left�Top,WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��	@      p�@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel433ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel434LeftTop+WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values `UUUU��@ XUUUUC�	@ �������@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel434ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel435Left�Top)WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      J�	@      t�@������ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel435ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel436Left�Top:WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��	@ �������@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel436ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel437LeftTop:WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUUC�	@ �������@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel437ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel438Left�Top:WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������	@ �������@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel438ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel439LeftTop� WidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@������B�@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionImportationColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel440Left�Top� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��	@      Ԕ@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption(f)ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel441LeftTop� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@�������	@      Ԕ@ XUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption(g)ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel442Left�Top� Width:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@      ؒ@UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption(h)=(f)+(g)ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel443Left�TopPWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������	@      @�@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel443ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel444Left�TophWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������	@       �@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel444ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel445Left�Top�WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������	@       �@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel445ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel446Left�Top�WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��	@ XUUUU��	@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel446ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel447Left�Top�WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����&�	@      Ԕ	@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel447ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel448Left�Top�WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      ҕ	@      Ț	@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel448ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel449Left�Top�WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����&�	@      ��	@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel449ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel450Left�Top�WidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����&�	@      ��	@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel450ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel451LeftTop� WidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@      ��@ XUUUUE�@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel451ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel452LeftTophWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU��@       �@�������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   8. Prorata de déductionColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel453Left� TophWidth3HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������@       �@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel453ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel454LeftdTop`Width\HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �����z�@       �@ �����j�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption
QRLabel454ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel461Left'Top� WidthXHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU;�	@ XUUUU��@ `UUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption /  /  /  /  /   /  /  /  /ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel
QRLabel391Left�Top?WidthXHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      R�	@      ��@ `UUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption /  /  /  /  /   /  /  /  /ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel12Left^Top$WidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@��������@UUUUUU=�	@      ؒ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption"A............................, le ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  
TQRSysData
QRSysData1Left�Top$Width#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@�������	@UUUUUU=�	@UUUUUU5�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentFontSize	  TQRLabel	QRLabel13LeftbTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      (�@UUUUUUI�	@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption&   Déclaré conforme à nos écritures, ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel14LeftzTop5WidthaHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      �@������ܺ	@������R�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionCachet et signatureColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize   TQRShape
QRShape300Left)Top{Width�HeightFFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU��@      W�
@ �����l�	@ ShapeqrsRectangle  TQRShape
QRShape301Left*Top�Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU� @      @�@      Ж
@ `UUUU��	@ Shape
qrsHorLine  TQRShape
QRShape302Left*Top�Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@      @�@ �������
@ `UUUU��	@ Shape
qrsHorLine  TQRLabel
QRLabel455LeftTop}Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@��������
@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption CADRE RESERVE A L'ADMINISTRATIONColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape303Left� Top�WidthHeight1Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����R�@      Ж
@ XUUUUU� @ ShapeqrsVertLine  TQRShape
QRShape304Left�Top�WidthHeight1Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      P�	@ XUUUU��
@ XUUUUU� @ ShapeqrsVertLine  TQRShape
QRShape305Left�Top�WidthHeight1Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������	@      Ж
@ XUUUUU� @ ShapeqrsVertLine  TQRShape
QRShape306LeftbTop�WidthHeight1Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@     (�@      Ж
@ XUUUUU� @ ShapeqrsVertLine  TQRLabel
QRLabel456LeftDTop�WidthMHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@�������@      O�
@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionMontant TVAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel457Left� Top�Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������"�@UUUUUUy�
@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
   PénalitéColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel458LefttTop�WidthLHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      �@      O�
@UUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Total à payerColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel459LeftTop�Width?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUM�	@      O�
@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Total verséColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel460Left�Top�Width_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��	@      O�
@������Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Reste à reverserColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel15Left*Top�Width_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      @�@UUUUUUi�
@������Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Crédit de taxe        :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel16Left*Top�Width^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      @�@�������
@TUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionMode de paiement :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel17Left� Top�Width<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ��@UUUUUUޤ
@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   (C)hèque N°ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel18Left� Top�Width-HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ��@�������
@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	   (E)spèceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel19Left� Top�WidthnHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ��@��������
@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   (D)épôt sans paiementColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel20Left�Top�Width&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@������N�	@UUUUUUޤ
@UUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionBanqueColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel21Left�Top�WidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      Ĝ	@�������
@������z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Numéro récépisé :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel22Left*Top�Width_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@UUUUUU9�	@UUUUUUޤ
@������Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   N° compte bancaireColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize   	TQuickRep	QuickRep2Left?�TopWidth�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep2BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand7LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysData
QRSysData5Left TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@                ��@ �������@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
  TQRExprQRExpr19Left�TopWidth1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ��	@ �������@ ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	FontSize
   TQRBandQRBand8LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandType	rbSummary TQRShape	QRShape18Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@     �F�	@ �������� �������@ ShapeqrsVertLine  TQRExprQRExpr4Left�TopWidthmHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@     �2�	@ �������@ `UUUU?�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColor��� ResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.Montant)Mask#,##0FontSize
   TQRBandQRBand9LeftTopWidthQHeightKFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      �@ ����*'�	@ BandTyperbTitle TQRLabel	QRLabel23Left� TopWidthzHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ �����M�@ �����J�@ �������@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaptionEXPORTATIONColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData6Left�TopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@ ������� @ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  TQRLabel	QRLabel71LeftTop$Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
Exercice :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText54Left7Top%Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ������@ `UUUU��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText55LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldNomFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel72LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg : ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText60LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText86LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����J�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel111Left� Top"Width^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU��@ XUUUU��@ XUUUUq�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEtaTaxe QuickRep2ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel122Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ XUUUU��@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptiondu :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel123Left TopWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������	@ XUUUU��@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel101ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel124Left�Top"WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ XUUUU��@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionau :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel125Left�Top"Width:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU�@�	@ XUUUU��@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel102ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel126Left�Top6Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*�	@      ��@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Monnaie :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText93LeftTop6Width(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUUt�	@      ��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldMonnaieTransparentWordWrap	FontSize
  TQRLabel
QRLabel127LeftTop5WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU5�@ `UUUUI�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionN.I.F :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText94Left(Top6WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����J�@      ��@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFTransparentWordWrap	FontSize
   TQRBandQRBand10LeftTopiWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbColumnHeader TQRLabel	QRLabel33Left� TopWidth8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ x�q��@ �q�q�@ XUUUU5�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   N° FactColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel34LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ �q�q�@ �q�q�@ �8��8N�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionDateColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel35Left�TopWidthCHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ p�qM�	@ �q�q�@ �q�q|�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption	   QuantitéColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape22Left~TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU�	@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel37Left�TopWidthkHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ �q�q��	@ �q�q�@ @��8�c�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionMontantColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape23Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@     �F�	@ ������� @ �������@ ShapeqrsVertLine  TQRShape	QRShape24LeftGTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU��@ ������� @      ��@ ShapeqrsVertLine  TQRShape	QRShape25Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����d�@           �������@ ShapeqrsVertLine  TQRLabel	QRLabel32LeftMTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ @��8���@ �q�q�@ �8��8N�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   N° Op°ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape27Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����u�@           �������@ ShapeqrsVertLine  TQRLabel	QRLabel43Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values p�q�@ �8��8��@ �q�q�@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionClientColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand11LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomBeforePrintQRBand11BeforePrintColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ForceNewColumnForceNewPage
ParentFontSize.ValuesTUUUUU5�@ ����*'�	@ BandTyperbDetail 	TQRDBText
QRDBText14Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��	@ �������@ �������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldQteMask#,##0TransparentWordWrap	FontSize	  TQRShape	QRShape26Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU]�@ �����u�@ �����J�� �������@ ShapeqrsVertLine  	TQRDBText
QRDBText15LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ������� @ ������� @     4�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscTransparentWordWrap	FontSize	  	TQRDBText
QRDBText16Left� TopWidth5HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@ ������� @ `UUUUI�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactTransparent	WordWrap	FontSize	  TQRShape	QRShape29Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@     �F�	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape30LeftITop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@ �����n�@           �������@ ShapeqrsVertLine  TQRShape	QRShape31Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@      �@      ��� �������@ ShapeqrsVertLine  	TQRDBText
QRDBText17Left�Top WidthsHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU!�	@           XUUUU+�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldMontantMask#,##0Transparent	WordWrap	FontSize	  	TQRDBText
QRDBText18LeftMTopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU��@ ������� @ `UUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldJournalTransparentWordWrap	FontSize	  	TQRDBText
QRDBText19Left� Top Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUUı@           �����ņ@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNomTransparent	WordWrap	FontSize	  TQRShape	QRShape37Left~Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU�	@ �������� �������@ ShapeqrsVertLine   TQRGroupQRGroup1LeftTop|WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.ValuesTUUUUU��@ ����*'�	@ 
ExpressionDetTaxe.Nature
FooterBandQRBand12Master	QuickRep2ReprintOnNewPage TQRExprQRExpr7LeftTop Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@           �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColor��� ResetAfterPrintTransparentWordWrap	
Expression1'Compte  ' + DetTaxe.Compte + '  '+DetTaxe.NatureFontSize
   TQRBandQRBand12LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter TQRExprQRExpr6Left�TopWidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ �������	@ �������@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColor��� ResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.Montant)Mask#,##0FontSize
  TQRShape	QRShape32Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ �����ܺ	@ ������� @ �������@ ShapeqrsVertLine  TQRExprQRExpr8LeftTopWidth~HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@      ��@      \�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColor��� ResetAfterPrintTransparentWordWrap	
Expression'Total  ' + DetTaxe.Compte FontSize
    	TQuickRep	QuickRep3Left�Top
Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep3BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand15LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysData
QRSysData2LeftTopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@      ��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  
TQRSysData
QRSysData7LeftTopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUձ�	@      ��@ �������@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand21LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandType	rbSummary TQRLabel	QRLabel44Left� TopWidthtHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �������@ �����ҿ@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionTotal soldeColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRExprQRExpr12Left�TopWidthbHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@     ���	@�������� @�������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  TQRShape	QRShape93Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ �������	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape94Left}Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@     ���	@          �������� @ ShapeqrsVertLine  TQRExprQRExpr26Left3TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@��������@�������� @TUUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SQte)Mask#,##0FontSize
  TQRShape
QRShape107Left0TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������Z�@�������� @�������� @ ShapeqrsVertLine  TQRExprQRExpr34Left�TopWidthdHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@ �������@ XUUUU]�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression&SUM(DetTaxe.SMontant*DetTaxe.Taux/100)Mask#,##0FontSize
   TQRBandQRBand22LeftTopWidthQHeightKFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      �@ ����*'�	@ BandTyperbTitle TQRLabel	QRLabel47Left� TopWidthHeight'Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@ XUUUU�@ �������@ ������@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaption+   Recapitulatif comptes suivant comptabilitéColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel66LeftTop#Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �������@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
Exercice :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText50Left;Top#Width\HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU!�@ �������@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel68LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg : ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText59Left!TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����G�@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel93Left�TopWidth4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������	@ �������@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	QRLabel93ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel94Left�TopWidth4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������	@ XUUUU��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	QRLabel94ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel95Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptiondu :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel96Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ XUUUU��@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionau :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel113Left� Top$Width^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@ XUUUUq�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEtaTaxe QuickRep3ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel116LeftTopWidth>HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �������@ �����J�@ `UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel116ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText51LeftTop(Width(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@     ���	@ �����J�@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldMonnaieTransparentWordWrap	FontSize
  TQRLabel	QRLabel39Left�Top(Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@     ���	@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Monnaie :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel40LeftTop2WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �������@ XUUUU]�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionN.I.F :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText53Left)Top2WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU��@ XUUUU]�@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFTransparentWordWrap	FontSize
   TQRBandQRBand23LeftTopiWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbColumnHeader TQRLabel	QRLabel48Left?TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@     \�@      ��@TUUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption	   IntituléColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape43Left}TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@     ���	@ ������� @ ������� @ ShapeqrsVertLine  TQRLabel	QRLabel53Left�TopWidthWHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�	@ �������@      ޏ@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
Montant HTColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel56LeftTopWidth3HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   PièceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape45Left7TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel89Left�TopWidth_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ �������@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTVAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape87Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@     �(�	@ ������� � ������� @ ShapeqrsVertLine  TQRShape	QRShape59Left0TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������Z�@�������� @�������� @ ShapeqrsVertLine  TQRLabel
QRLabel110Left4TopWidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@TUUUUU��@��������@UUUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption	   QuantitéColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand24LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbDetail 	TQRDBText
QRDBText20Left;TopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU!�@ �������@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape47LefthTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@      Ԕ	@           �������@ ShapeqrsVertLine  TQRShape	QRShape48LeftjTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUUI�@           �������@ ShapeqrsVertLine  TQRShape	QRShape49Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������	@           ������� @ ShapeqrsVertLine  	TQRDBText
QRDBText21LeftrTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@ �������@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText22Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@ �������@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNomFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize	  	TQRDBText
QRDBText23LefttTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ʙ	@ ������� @      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape53Left7TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText
QRDBText24LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����J�@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCodeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape58Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      �@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText
QRDBText25LeftTopWidthBHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU��	@ ������� @ �����G�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSMontantFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize	  	TQRDBText
QRDBText26Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*$�	@ ������� @       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldTiersFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape52Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����M�	@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText
QRDBText89Left�TopWidth&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�����*�	@�������� @������Z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSQteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize	   TQRGroupQRGroup3LeftTop|WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ 
ExpressionDetTaxe.Compte
FooterBandQRBand25Master	QuickRep3ReprintOnNewPage 	TQRDBText
QRDBText27LeftTopWidth$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@      ��@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand25LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter 	TQRDBText
QRDBText28Left	TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@       �@ �������@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText30Left>TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@ ������� @ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldIntituleFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRShapeQRShape6Left7TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@ ������� @ �������@ ShapeqrsVertLine  TQRExprQRExpr24Left�TopWidtheHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@��������	@�������� @�������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  TQRShape	QRShape88Left}TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@     ���	@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape92Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ �������	@ ������� � �������@ ShapeqrsVertLine  TQRExprQRExpr25Left3TopWidthHHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@��������@�������� @�������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SQte)Mask#,##0FontSize
  TQRShape
QRShape106Left0TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������Z�@�������� @�������� @ ShapeqrsVertLine  TQRExprQRExpr33Left�TopWidthdHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@ �������@ XUUUU]�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression&SUM(DetTaxe.SMontant*DetTaxe.Taux/100)Mask#,##0FontSize
   TQRGroupQRGroup4LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ 
ExpressionDetTaxe.Periode
FooterBandQRBand27Master	QuickRep3ReprintOnNewPage 	TQRDBText
QRDBText29LeftTopWidth#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@      ��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldPeriodeFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand27LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter 	TQRDBText
QRDBText31Left.TopWidth#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����"�@      ��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldPeriodeFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style OnPrintQRDBText31Print
ParentFontTransparentWordWrap	FontSize	  TQRExprQRExpr15Left�TopWidthdHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@    ���	@ �������@ XUUUU]�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  TQRShape	QRShape89Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ �������	@ ������� � �������@ ShapeqrsVertLine  TQRShape	QRShape90Left}TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@     ���	@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape91Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ �������	@ ������� � �������@ ShapeqrsVertLine  TQRExprQRExpr13Left4TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@TUUUUU��@��������@TUUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SQte)Mask#,##0FontSize
  TQRShape
QRShape105Left0TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������Z�@�������� @�������� @ ShapeqrsVertLine  TQRExprQRExpr32Left�TopWidthdHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@ �������@ XUUUU]�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression&SUM(DetTaxe.SMontant*DetTaxe.Taux/100)Mask#,##0FontSize
    	TQuickRep	QuickRep6Left�Top� Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep6BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand34LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysDataQRSysData12LeftTopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  
TQRSysDataQRSysData13LeftTopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUձ�	@      ��@ �������@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand35LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandType	rbSummary TQRLabel	QRLabel76Left� TopWidthtHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �������@ �����ҿ@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionTotal soldeColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRExprQRExpr20Left�TopWidthNHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      ��	@�������� @      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	  TQRExprQRExpr23Left�TopWidth,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU+�	@ �������@ XUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SQte)Mask#,##0FontSize	  TQRShape	QRShape84Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUU���	@��������@�������� @ ShapeqrsVertLine  TQRShape	QRShape86Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUU���	@           ������� @ ShapeqrsVertLine   TQRBandQRBand36LeftTopWidthQHeightKFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      �@ ����*'�	@ BandTyperbTitle TQRLabel	QRLabel77Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@      �@ �����J�@ �����@�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   Détail vente et achatColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel78LeftTop$Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
Exercice :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText65Left8Top$WidthfHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel79LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg : ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText67Left TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel97Left�TopWidth4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU�@�	@      ��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	QRLabel97ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel98Left�TopWidth4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��	@      �@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	QRLabel98ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel99Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      p�	@      ��@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptiondu :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel100Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      p�	@ �����J�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionau :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel108Left� TopWidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@      ��@ �����,�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   (Détail par compte)ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText84LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����J�@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel114Left;Top%Width^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     �9�	@ `UUUU��@ XUUUUq�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEtaTaxe QuickRep6ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel41LeftTop4WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU5�@ �������@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionN.I.F :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText57Left&Top5WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����Z�@ `UUUUI�@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFTransparentWordWrap	FontSize
  	TQRDBText
QRDBText66LeftTop(Width(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*��	@ �����J�@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldMonnaieTransparentWordWrap	FontSize
  TQRLabel	QRLabel42Left�Top(Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*�	@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Monnaie :ColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand37LeftTopiWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbColumnHeader TQRLabel	QRLabel80LeftTopWidth"HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ ������� @ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   PièceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape69Left&TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������Z�@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel81Left� TopWidthcHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      ��@      ��@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption	Nom TiersColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape70Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������ρ@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel82Left)TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU��@ �������@ XUUUU5�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   N° FaColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape71LeftmTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU?�@           ������� @ ShapeqrsVertLine  TQRLabel	QRLabel83LeftOTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU��@ �������@ XUUUU5�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionDateColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel84LeftrTopWidth(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      ��@��������@������J�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionCompteColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial Narrow
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape72Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@      ��@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel85Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      �@��������@TUUUUU5�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionStat.ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel86Left�TopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*m�	@      ��@ �����J�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionMontantColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape73Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUU���	@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel88Left�TopWidth(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@      ��@ �����J�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   QtéColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape82Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@TUUUU���	@          �������� @ ShapeqrsVertLine  TQRShape	QRShape95LeftITopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����n�@ �������@ ������� @ ShapeqrsVertLine  TQRShape	QRShape96Left,Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@      �@          �������� @ ShapeqrsVertLine  TQRLabel
QRLabel107Left6TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@UUUUUU(�	@      ��@�������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   LibelléColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand38LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomBeforePrintQRBand38BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values      p�@ ����*'�	@ BandTyperbDetail 	TQRDBText
QRDBText68Left+TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����6�@ ������� @      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape75Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������J�@      ��@�������� ��������� @ ShapeqrsVertLine  TQRShape	QRShape76LeftJTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU��@           ������� @ ShapeqrsVertLine  TQRShape	QRShape77Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUU���	@           ������� @ ShapeqrsVertLine  	TQRDBText
QRDBText69LeftLTopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����Z�@ ������� @ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Maskdd/mm/yy
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText70Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ;�@ ������� @ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNomFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize  TQRShape	QRShape78Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUU���	@��������@�������� @ ShapeqrsVertLine  	TQRDBText
QRDBText71LeftpTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ ������� @ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldTiersFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape79Left'TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@      ��@�������� @�������� @ ShapeqrsVertLine  	TQRDBText
QRDBText72LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ ������� @       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCodeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape80LeftmTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU?�@ ������� @ ������� @ ShapeqrsVertLine  	TQRDBText
QRDBText73Left TopWidthKHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �������	@ ������� @      �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSMontantFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize  	TQRDBText
QRDBText74Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      w�@�������� @      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldStatistiqueFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape81Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������ρ@�������� ��������� @ ShapeqrsVertLine  	TQRDBText
QRDBText82Left�TopWidth*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@     ���	@�������� @      �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSQteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize  TQRShape	QRShape97Left,TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@      �@�������� @�������� @ ShapeqrsVertLine  	TQRDBText
QRDBText76Left.TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@TUUUUU��@�������� @      �@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldLibelleFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize   TQRGroupQRGroup8LeftTop|WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ 
ExpressionDetTaxe.Compte
FooterBandQRBand40Master	QuickRep6ReprintOnNewPage 	TQRDBText
QRDBText78LeftTopWidth$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      p�@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText79LeftJTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU��@ �������@ `UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldIntituleFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand40LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter TLabelLabel4Left� TopWidthHeightCaptionTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TQRExprQRExpr22Left�TopWidthOHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*m�	@ �������@ XUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	  	TQRDBText
QRDBText80Left� TopWidth$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      '�@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel87LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg: ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText81Left=TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRExprQRExpr21Left�TopWidth(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�����*��	@�������� @������J�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SQte)Mask#,##0FontSize	  TQRShape	QRShape83Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUU���	@��������@�������� @ ShapeqrsVertLine  TQRShape	QRShape85Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUU���	@           ������� @ ShapeqrsVertLine    	TQuickRep	QuickRep5Left�Top�Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep5BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand26LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysData
QRSysData8LeftTopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  
TQRSysDataQRSysData11LeftTopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUձ�	@      ��@ �������@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand28LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandType	rbSummary TQRLabel	QRLabel49LeftxTopWidthtHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUUq�	@ �������@ �����ҿ@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption   Total généralColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRExprQRExpr14Left�TopWidthTHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@�����*��	@�������� @      �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize  TQRShape
QRShape104Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������	@�������� @�������� @ ShapeqrsVertLine   TQRBandQRBand29LeftTopWidthQHeightKFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      �@ ����*'�	@ BandTyperbTitle TQRLabel	QRLabel50Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ �����W�@ �����J�@ �������@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   Détail prestationColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  TQRLabel	QRLabel73LeftTop$Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
Exercice :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText56Left8Top$Width\HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@       �@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel74LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg : ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText64Left TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel101Left TopWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������	@ �������@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel101ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel102Left�TopWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU�@�	@ �����Z�@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel102ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel103Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptiondu :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel104Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ �����Z�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionau :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText83LeftTopWidthyHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����J�@ XUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel115Left+TopWidth^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU8�@ �������@ XUUUUq�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEtaTaxe QuickRep5ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel45LeftTop3WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����J�@      ��@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionN.I.F :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText85Left&Top3WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����Z�@      ��@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFTransparentWordWrap	FontSize
  	TQRDBText
QRDBText90LeftTop'Width(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ������	@      ��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldMonnaieTransparentWordWrap	FontSize
  TQRLabel	QRLabel46Left�Top'Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUU���	@      ��@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Monnaie :ColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand30LeftTopiWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbColumnHeader TQRLabel	QRLabel57LeftTopWidth#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      ��@��������@��������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   PièceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape42Left(TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������J�@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel51Left� TopWidthbHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@TUUUUUg�@��������@�������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionFournisseurColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel52Left,TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@UUUUUU��@��������@TUUUUU5�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   N° FaColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel60LeftOTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@UUUUUU��@��������@UUUUUU]�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionDateColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel61LeftqTopWidth#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@������ܺ@��������@��������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTiersColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape65Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUUU�@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel63Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@UUUUUU��@��������@      p�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionStat.ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel64Left�TopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�����*m�	@��������@������J�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionMontantColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape67Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������	@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape98LeftKTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@      �@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape99LeftkTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@�������@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape64Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@TUUUUU��@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape41Left'Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������@          �������� @ ShapeqrsVertLine  TQRLabel
QRLabel109Left,TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      �@      ��@UUUUUU�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   LibelléColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand31LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      p�@ ����*'�	@ BandTyperbDetail 	TQRDBText
QRDBText32Left*TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@ ������� @ `UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape44Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������J�@UUUUUU�@          �������� @ ShapeqrsVertLine  TQRShape	QRShape46LeftJTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUUU��@          �������� @ ShapeqrsVertLine  	TQRDBText
QRDBText34LeftLTopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����Z�@ ������� @ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Maskdd/mm/yy
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText35Left� TopWidthaHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      ;�@�������� @TUUUUUg�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNomFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize  TQRShape	QRShape61Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������	@�������� @�������� @ ShapeqrsVertLine  	TQRDBText
QRDBText36LeftnTopWidth,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ������@ ������� @ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldTiersFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape62Left(TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������J�@�������� @�������� @ ShapeqrsVertLine  	TQRDBText
QRDBText38LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ ������� @       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCodeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape	QRShape63Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUUU(�@          �������� @ ShapeqrsVertLine  	TQRDBText
QRDBText39Left�Top WidthTHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      \�	@                �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSMontantFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize  	TQRDBText
QRDBText41Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@UUUUUU��@�������� @TUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldStatistiqueFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize  TQRShape
QRShape100LeftmTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@TUUUUU?�@          �������� @ ShapeqrsVertLine  TQRShape
QRShape102Left'Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������@          �������� @ ShapeqrsVertLine  	TQRDBText
QRDBText77Left*TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@������d�@�������� @��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldLibelleFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize   TQRGroupQRGroup5LeftTop|WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ 
ExpressionDetTaxe.TypX
FooterBandQRBand32Master	QuickRep5ReprintOnNewPage 	TQRDBText
QRDBText42Left	TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@       �@ �������@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldTypXFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText46Left)TopWidth6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU��@      ��@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataField
NatureProdFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand32LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter TQRExprQRExpr16Left�Top WidthUHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�����*��	@          UUUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBoldfsItalic ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  	TQRDBText
QRDBText45Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@      ��@      ��@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataField
NatureProdFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize	  TQRShape
QRShape103Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������	@�������� @�������� @ ShapeqrsVertLine   TQRGroupQRGroup6LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ 
ExpressionDetTaxe.Compte
FooterBandQRBand33Master	QuickRep5ReprintOnNewPage 	TQRDBText
QRDBText43Left)TopWidth$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU��@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText47LeftWTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ޏ@ �������@ `UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldIntituleFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize   TQRBandQRBand33LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomBeforePrintQRBand33BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter TQRExprQRExpr17Left�Top WidthTHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@     \�	@                �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  	TQRDBText
QRDBText48Left(TopWidth$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU��@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel70LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg: ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText61Left=TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRShape
QRShape101Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������	@�������� @�������� @ ShapeqrsVertLine  TQRLabel
QRLabel117Left`TopWidth8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU��	@ �������@ XUUUU5�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel117ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize	    	TQuickRep	QuickRep4LeftI�Top
Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep4BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand16LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysData
QRSysData9LeftTopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      ��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  
TQRSysDataQRSysData10LeftTopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUձ�	@      ��@ �������@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand17LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandType	rbSummary TQRLabel	QRLabel67Left� TopWidthtHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �������@ �����ҿ@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionTotal soldeColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape66Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@ XUUU�J�	@ �������� �������@ ShapeqrsVertLine  TQRExprQRExpr1Left6TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU(�	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.MDebit)Mask#,##0FontSize
  TQRExprQRExpr3Left�TopWidthSHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      \�	@ �������@ �����@�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
Expression*SUM(DetTaxe.MDebit) - SUM(DetTaxe.MCredit)Mask#,##0FontSize
  TQRExprQRExpr2Left�TopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������	@ ������� @     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.MCredit)Mask#,##0FontSize
   TQRBandQRBand18LeftTopWidthQHeightKFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      �@ ����*'�	@ BandTyperbTitle TQRLabelDetailLeftTopWidth/HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@      ��@ �����J�@ XUUUUq�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   DétailColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  TQRLabel
QRLabel202LeftTop$Width0HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
Exercice :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText62Left8Top%Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ `UUUU��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText49LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldNomFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel65LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText58LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����ҿ@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText88LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����J�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel
QRLabel112LeftTop"Width^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����%�@ XUUUU��@ XUUUUq�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEtaTaxe QuickRep4ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel90LeftTop6WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@      ��@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionN.I.F :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText91Left&Top6WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����Z�@      ��@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFTransparentWordWrap	FontSize
  TQRLabel	QRLabel91Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptiondu :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel92Left TopWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������	@ �������@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel101ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel119Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU���	@ �����Z�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionau :ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel120Left�TopWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUU�@�	@ �����Z�@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
QRLabel102ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel
QRLabel121Left�Top'Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUU���	@      ��@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Monnaie :ColorclWhiteTransparentWordWrap	FontSize
  	TQRDBText
QRDBText92LeftTop'Width(HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����G�	@      ��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldMonnaieTransparentWordWrap	FontSize
   TQRBandQRBand1LeftTopiWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbColumnHeader TQRLabelFournisseurLeft� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU�@ �������@ `UUUU�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionFournisseurColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape57LeftnTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      O�	@ ������� � �������@ ShapeqrsVertLine  TQRLabel	QRLabel62Left;TopWidth/HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU!�@ �������@ XUUUUq�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   N° FactColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape60Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      �@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel55LeftrTopWidth/HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@ XUUUUq�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionDateColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel54LeftsTopWidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*`�	@ ������� @ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionCompteColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape20Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU?�	@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel58Left�TopWidth9HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     �P�	@ �������@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionN.I.FColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel59Left�TopWidthHHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ��	@ �������@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionMontantColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape56Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �������	@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel11LeftTopWidth3HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   PièceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShapeQRShape1Left7TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@ ������� @ �������@ ShapeqrsVertLine  TQRShapeQRShape3LeftjTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUUI�@           �������@ ShapeqrsVertLine   TQRBandQRBand14LeftTop|WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbDetail 	TQRDBText	QRDBText7Left;TopWidth)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU!�@ �������@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape50LeftnTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@      O�	@           �������@ ShapeqrsVertLine  TQRShape	QRShape54LeftjTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUUI�@           �������@ ShapeqrsVertLine  TQRShape	QRShape55Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������	@           ������� @ ShapeqrsVertLine  	TQRDBText
QRDBText37LeftrTopWidth&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@      ��@ �����Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText40Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU�@ ������� @ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhite	DataFieldNomFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape51Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUU�J�	@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText
QRDBText33LeftsTopWidth$HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*`�	@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShapeQRShape2Left7TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText	QRDBText1LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����J�@ �������@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShapeQRShape4Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      �@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText	QRDBText2Left�TopWidthSHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      \�	@ �������@ �����@�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldMontantFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Mask#,##0
ParentFontTransparent	WordWrap	FontSize
  	TQRDBText	QRDBText3Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ����*$�	@ �������@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldTiersFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	     