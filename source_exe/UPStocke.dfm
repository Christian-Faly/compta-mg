object PStockee: TPStockee
  OldCreateOrder = False
  Left = 273
  Top = 95
  Height = 483
  Width = 779
  object RSelJour: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = RSelJourCalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from selJour')
    Left = 38
    Top = 8
    object RSelJourJournal: TWideStringField
      FieldName = 'Journal'
      FixedChar = True
      Size = 10
    end
    object RSelJourDateEsc: TDateTimeField
      DisplayLabel = 'Date op'#233'ration'
      DisplayWidth = 13
      FieldName = 'DateEsc'
    end
    object RSelJourCompte: TWideStringField
      DisplayWidth = 12
      FieldName = 'Compte'
      FixedChar = True
    end
    object RSelJourMDebit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MDebit'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object RSelJourMCredit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MCredit'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object RSelJourNumFact: TWideStringField
      DisplayWidth = 12
      FieldName = 'NumFact'
      FixedChar = True
    end
    object RSelJourLibelle: TWideStringField
      FieldName = 'Libelle'
      FixedChar = True
      Size = 60
    end
    object RSelJourTiers: TWideStringField
      FieldName = 'Tiers'
      FixedChar = True
    end
    object RSelJourDebit: TWideStringField
      FieldName = 'Debit'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object RSelJourCodeJrnx: TWideStringField
      FieldName = 'CodeJrnx'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object RSelJourPeriode: TWideStringField
      FieldName = 'Periode'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object RSelJourmontant: TLargeintField
      FieldName = 'montant'
    end
    object RSelJourJour: TSmallintField
      FieldName = 'Jour'
      Visible = False
    end
    object RSelJourNumero: TAutoIncField
      FieldName = 'Numero'
      ReadOnly = True
      Visible = False
    end
    object RSelJourDateOpe: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'DateOpe'
      Visible = False
      Calculated = True
    end
    object RSelJourLettre: TWideStringField
      FieldName = 'Lettre'
      FixedChar = True
      Size = 4
    end
    object RSelJourNPiece: TStringField
      FieldKind = fkCalculated
      FieldName = 'NPiece'
      Visible = False
      Size = 4
      Calculated = True
    end
    object RSelJourtransferer: TStringField
      FieldName = 'transferer'
      Size = 5
    end
    object RSelJourizy: TStringField
      FieldName = 'izy'
      Size = 5
    end
  end
  object RCalculSolde: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select sum(SMontant) as solde from CalculSolde'
      'where (periode>=:a)and(periode<=:b)'
      'group by compte, periode')
    Left = 137
    Top = 8
    object RCalculSoldesolde: TBCDField
      FieldName = 'solde'
      Precision = 19
    end
  end
  object RSel1EltJrn: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = RSel1EltJrnCalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'Select * from Sel1EltJrn')
    Left = 232
    Top = 8
    object RSel1EltJrnJournal: TStringField
      FieldName = 'Journal'
      Size = 10
    end
    object RSel1EltJrnDebit: TStringField
      FieldName = 'Debit'
      Size = 1
    end
    object RSel1EltJrnCompte: TStringField
      DisplayWidth = 20
      FieldName = 'Compte'
    end
    object RSel1EltJrnmontant: TLargeintField
      FieldName = 'montant'
    end
    object RSel1EltJrnMDebit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MDebit'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object RSel1EltJrnMCredit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MCredit'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object RSel1EltJrnContrepartie: TStringField
      FieldName = 'Contrepartie'
    end
    object RSel1EltJrnNbcontre: TSmallintField
      FieldName = 'Nbcontre'
    end
    object RSel1EltJrnLContre: TStringField
      FieldKind = fkCalculated
      FieldName = 'LContre'
      Calculated = True
    end
    object RSel1EltJrnQte: TFloatField
      FieldName = 'Qte'
    end
    object RSel1EltJrnLibel2: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'Libel2'
      Size = 60
      Calculated = True
    end
    object RSel1EltJrnNumCHQ: TStringField
      FieldName = 'NumCHQ'
    end
    object RSel1EltJrnDateFact: TDateField
      FieldName = 'DateFact'
    end
    object RSel1EltJrnNumFact: TStringField
      FieldName = 'NumFact'
    end
    object RSel1EltJrnLibelle: TStringField
      FieldName = 'Libelle'
      Size = 60
    end
    object RSel1EltJrntyp: TSmallintField
      FieldName = 'typ'
    end
    object RSel1EltJrnTypX: TStringField
      FieldName = 'TypX'
      Size = 30
    end
    object RSel1EltJrnSigleTaxe: TStringField
      FieldName = 'SigleTaxe'
      Size = 10
    end
    object RSel1EltJrnDateEsc: TDateField
      FieldName = 'DateEsc'
    end
    object RSel1EltJrnPeriode: TWideStringField
      FieldName = 'Periode'
      FixedChar = True
      Size = 10
    end
    object RSel1EltJrnJour: TSmallintField
      FieldName = 'Jour'
    end
    object RSel1EltJrnIntitule: TWideStringField
      FieldName = 'Intitule'
      FixedChar = True
      Size = 100
    end
    object RSel1EltJrnCodeJrnx: TWideStringField
      FieldName = 'CodeJrnx'
      FixedChar = True
      Size = 10
    end
    object RSel1EltJrnNumero: TIntegerField
      FieldName = 'Numero'
    end
    object RSel1EltJrnizy: TStringField
      FieldName = 'izy'
      Size = 5
    end
  end
  object RLeDernier: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * from LeDernier'
      'where (CodeJrnx=:a) and(Periode=:b)')
    Left = 336
    Top = 8
    object RLeDernierFarany: TWideStringField
      FieldName = 'Farany'
      Size = 255
    end
    object RLeDernierPeriode: TWideStringField
      FieldName = 'Periode'
      FixedChar = True
      Size = 10
    end
    object RLeDernierCodeJrnx: TWideStringField
      FieldName = 'CodeJrnx'
      FixedChar = True
      Size = 10
    end
  end
  object RTaxe: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from Taxe')
    Left = 38
    Top = 66
    object RTaxeDebit: TStringField
      FieldName = 'Debit'
      Size = 1
    end
    object RTaxemontant: TLargeintField
      FieldName = 'montant'
    end
    object RTaxecompte: TStringField
      FieldName = 'compte'
    end
    object RTaxeJournal: TStringField
      FieldName = 'Journal'
      Size = 10
    end
    object RTaxeExonere: TSmallintField
      FieldName = 'Exonere'
    end
    object RTaxePeriode: TWideStringField
      FieldName = 'Periode'
      FixedChar = True
      Size = 10
    end
    object RTaxeExonere1: TSmallintField
      FieldName = 'Exonere1'
    end
  end
  object SuppJournal: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'x'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'delete  from Journal where code=:x')
    Left = 137
    Top = 66
  end
  object SuppEltJrn: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'x'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'delete  from EltJrn where Journal=:x')
    Left = 232
    Top = 66
  end
  object RIncreEltJrn: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from IncreEltJrn')
    Left = 38
    Top = 124
    object RIncreEltJrnDernierNum: TIntegerField
      FieldName = 'DernierNum'
    end
  end
  object SuppLettrage: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'x'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'DELETE '
      'FROM lettrage'
      'WHERE lettrage.Lettre=:x')
    Left = 137
    Top = 124
  end
  object MettrePS: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    Left = 336
    Top = 66
  end
  object RDemandeTiers: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * from DemandeTiers'
      'where (CompteDe<=:a)and(CompteA>=:b)')
    Left = 232
    Top = 124
    object RDemandeTiersCompteDe: TWideStringField
      FieldName = 'CompteDe'
      FixedChar = True
    end
    object RDemandeTiersCompteA: TWideStringField
      FieldName = 'CompteA'
      FixedChar = True
    end
  end
  object RParamRubrique: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'c'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'd'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * '
      'from paramRubrique'
      'where (parametre=:a)and(Rubrique=:b)'
      'and(CompteDe<=:c)and(CompteA>=:d)')
    Left = 336
    Top = 124
  end
  object SuppTout: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    Left = 38
    Top = 182
  end
  object Convertion: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    Left = 137
    Top = 182
  end
  object RDiffDebitCredit: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from DiffDebitCredit'
      'where difference<>0')
    Left = 232
    Top = 182
  end
  object RLettreNonValide: TADOTable
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    TableName = 'VerifierLettre'
    Left = 336
    Top = 182
    object RLettreNonValideLettre: TWideStringField
      FieldName = 'Lettre'
      FixedChar = True
      Size = 4
    end
  end
  object ExecuterReport: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'DELETE EltJrn.Journal'
      'FROM EltJrn'
      'WHERE (((EltJrn.Journal)="AN010001"))')
    Left = 38
    Top = 241
  end
  object SuppJournalReport: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    Left = 137
    Top = 241
  end
  object InsertEltReport: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'INSERT INTO EltJrn ( Journal, Debit, Compte, Montant, numero )'
      
        'SELECT ZEltReport.RJournal, ZEltReport.Debit, ZEltReport.Compte,' +
        ' ZEltReport.RMontant, Numero_1'
      'FROM ZEltReport;')
    Left = 232
    Top = 241
  end
  object InsertJournalReport: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'INSERT INTO Journal ( Code, Periode, Jour, CodeJrnx, DateEsc, Da' +
        'teSaisie )'
      
        'SELECT '#39'AN010001'#39' AS Expr1, '#39'2005/01'#39' AS Expr2, 1 AS Expr3, '#39'AN'#39 +
        ' AS Expr4, #1/1/2005# AS Expr5, #1/1/2005# AS Expr6;')
    Left = 336
    Top = 241
  end
  object ZEstCeJournalReport: TADOTable
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    TableName = 'ZEstCeJournalReport'
    Left = 454
    Top = 8
  end
  object ZinsererJournal: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'INSERT INTO Journal ( Code, Periode, Jour, CodeJrnx, DateEsc, Da' +
        'teSaisie )'
      'SELECT '#39'AN010001'#39' AS Expr1, '#39'2005/01'#39' AS Expr2, 1 AS Expr3, '
      #39'AN'#39' AS Expr4, #1/1/2005# AS Expr5, #1/1/2005# AS Expr6;')
    Left = 454
    Top = 66
  end
  object ZInsererReport: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'INSERT INTO EltJrn ( Debit, Compte, Montant, Journal, Libelle, '
      'Contrepartie, Nbcontre, Numero, NumFact )'
      
        'SELECT ReportEltJrn.Debit, ReportEltJrn.Compte, ReportEltJrn.RMo' +
        'ntant, '
      
        #39'AN010001'#39' AS Expr1, '#39'Report '#224' nouveau'#39' AS Expr2, '#39'99999999'#39' AS ' +
        'Expr3, '
      '10 AS Expr4, Numero_1, NumFact_1'
      'FROM ReportEltJrn;')
    Left = 454
    Top = 124
  end
  object ZSupprimerReport: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'DELETE '
      'FROM EltJrn'
      'WHERE (((EltJrn.Journal)='#39'AN010001'#39'));')
    Left = 454
    Top = 182
  end
  object ReInputation: TADOQuery
    CommandTimeout = 0
    Parameters = <>
    Left = 454
    Top = 241
  end
  object NumeroterReport: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select Numero from eltjrn '
      'where (Journal<'#39'ANX'#39') and(Journal>'#39'AN'#39')')
    Left = 559
    Top = 182
    object NumeroterReportNumero: TIntegerField
      FieldName = 'Numero'
    end
  end
  object ADOTable1: TADOTable
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    TableName = 'EltJrn'
    Left = 559
    Top = 8
  end
  object RRembTVA: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = RRembTVACalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from RembTVA2')
    Left = 38
    Top = 241
    object RRembTVARubrique: TWideStringField
      FieldName = 'Rubrique'
      FixedChar = True
      Size = 10
    end
    object RRembTVACompte: TWideStringField
      DisplayWidth = 10
      FieldName = 'Compte'
      FixedChar = True
    end
    object RRembTVALibelTVA: TWideStringField
      DisplayWidth = 50
      FieldName = 'LibelTVA'
      Size = 255
    end
    object RRembTVAJrTVA: TWideStringField
      FieldName = 'JrTVA'
      FixedChar = True
      Size = 10
    end
    object RRembTVAPeriode: TWideStringField
      DisplayWidth = 7
      FieldName = 'Periode'
      FixedChar = True
      Size = 10
    end
    object RRembTVADescription: TWideStringField
      FieldName = 'Description'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object RRembTVAMontantTVA: TBCDField
      DisplayWidth = 15
      FieldName = 'MontantTVA'
      DisplayFormat = '#,##0'
      Precision = 19
    end
    object RRembTVATiers: TWideStringField
      DisplayWidth = 10
      FieldName = 'Tiers'
      FixedChar = True
    end
    object RRembTVADtPaie: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DtPaie'
    end
    object RRembTVAJrRglt: TWideStringField
      DisplayWidth = 8
      FieldName = 'JrRglt'
      Size = 255
    end
    object RRembTVAIntitule: TWideStringField
      DisplayWidth = 30
      FieldName = 'Intitule'
      FixedChar = True
      Size = 100
    end
    object RRembTVANIF: TWideStringField
      DisplayWidth = 10
      FieldName = 'NIF'
      FixedChar = True
    end
    object RRembTVAStatistique: TWideStringField
      DisplayWidth = 20
      FieldName = 'Statistique'
      FixedChar = True
    end
    object RRembTVADateEsc: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DateEsc'
    end
    object RRembTVANumFact: TWideStringField
      DisplayWidth = 10
      FieldName = 'NumFact'
      FixedChar = True
    end
    object RRembTVAMtTiers: TBCDField
      DisplayWidth = 15
      FieldName = 'MtTiers'
      Precision = 19
    end
    object RRembTVAHTLigne: TBCDField
      DisplayWidth = 15
      FieldName = 'HTLigne'
      Precision = 19
    end
    object RRembTVAMTaux: TFloatField
      DisplayWidth = 15
      FieldName = 'MTaux'
    end
    object RRembTVAMtHT: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MtHT'
      Calculated = True
    end
    object RRembTVAObjetFact: TWideStringField
      DisplayWidth = 50
      FieldName = 'ObjetFact'
      Size = 255
    end
  end
  object RRembTVA_Facture: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = RRembTVA_FactureCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * from Journal x, EltJrn y'
      'where (Journal=:a)and (x.code=y.Journal)')
    Left = 137
    Top = 241
    object RRembTVA_FactureDebit: TWideStringField
      FieldName = 'Debit'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object RRembTVA_FactureCompte: TWideStringField
      DisplayWidth = 12
      FieldName = 'Compte'
      FixedChar = True
    end
    object RRembTVA_Facturemontant: TLargeintField
      FieldName = 'montant'
      ReadOnly = True
    end
    object RRembTVA_FactureLibelle: TWideStringField
      DisplayWidth = 30
      FieldName = 'Libelle'
      FixedChar = True
      Size = 60
    end
    object RRembTVA_FactureMDebit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MDebit'
      Calculated = True
    end
    object RRembTVA_FactureMCredit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MCredit'
      Calculated = True
    end
    object RRembTVA_FactureDateFact: TDateTimeField
      FieldName = 'DateFact'
    end
    object RRembTVA_FactureNumFact: TWideStringField
      FieldName = 'NumFact'
      FixedChar = True
    end
    object RRembTVA_FacturePeriode: TWideStringField
      FieldName = 'Periode'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object RRembTVA_FactureDateEsc: TDateTimeField
      FieldName = 'DateEsc'
      Visible = False
    end
    object RRembTVA_FactureJournal: TWideStringField
      FieldName = 'Journal'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object RRembTVA_FactureMois: TStringField
      FieldKind = fkCalculated
      FieldName = 'Mois'
      Visible = False
      Calculated = True
    end
    object RRembTVA_FactureAnnee: TStringField
      FieldKind = fkCalculated
      FieldName = 'Annee'
      Visible = False
      Calculated = True
    end
    object RRembTVA_FactureTiers: TWideStringField
      FieldName = 'Tiers'
      Visible = False
      FixedChar = True
    end
  end
  object RRembTVA_Rglt: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = RRembTVA_RgltCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 5
        Value = '     '
      end
      item
        Name = 'b'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM EltLettree'
      'where (lettre=:a)and(Numero<>:b)')
    Left = 654
    Top = 8
    object RRembTVA_RgltJournal: TWideStringField
      FieldName = 'Journal'
      FixedChar = True
      Size = 10
    end
    object RRembTVA_RgltLibelle: TWideStringField
      DisplayWidth = 45
      FieldName = 'Libelle'
      FixedChar = True
      Size = 60
    end
    object RRembTVA_RgltDebit: TWideStringField
      FieldName = 'Debit'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object RRembTVA_Rgltmontant: TLargeintField
      FieldName = 'montant'
    end
    object RRembTVA_RgltMDebit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MDebit'
      Calculated = True
    end
    object RRembTVA_RgltMCredit: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'MCredit'
      Calculated = True
    end
    object RRembTVA_RgltCompte: TWideStringField
      DisplayWidth = 11
      FieldName = 'Compte'
      Visible = False
      FixedChar = True
    end
    object RRembTVA_RgltDateEsc: TDateTimeField
      DisplayLabel = 'DateFact'
      FieldName = 'DateEsc'
    end
    object RRembTVA_RgltNumFact: TWideStringField
      FieldName = 'NumFact'
      FixedChar = True
    end
  end
  object R_Centralisateur: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT journal'
      'FROM EltJrn'
      'WHERE (((Compte)>'#39'443130'#39' And (Compte)<'#39'443131Z'#39'))'
      'GROUP BY Journal;')
    Left = 454
    Top = 369
    object R_Centralisateurjournal: TWideStringField
      FieldName = 'journal'
      FixedChar = True
      Size = 10
    end
  end
  object CreTRembTVA: TADOQuery
    Connection = DaConnect.C_Compta
    CommandTimeout = 0
    Parameters = <>
    Left = 653
    Top = 66
  end
  object CopieRembTVA: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = CopieRembTVACalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from CopieRembTVA'
      'order by CompteFnrs')
    Left = 559
    Top = 241
    object CopieRembTVALigneTVA: TIntegerField
      FieldName = 'LigneTVA'
    end
    object CopieRembTVADateFact: TDateTimeField
      FieldName = 'DateFact'
    end
    object CopieRembTVANumFact: TWideStringField
      FieldName = 'NumFact'
      FixedChar = True
      Size = 40
    end
    object CopieRembTVAFournisseur: TWideStringField
      FieldName = 'Fournisseur'
      FixedChar = True
      Size = 40
    end
    object CopieRembTVAObjetFact: TWideStringField
      FieldName = 'ObjetFact'
      FixedChar = True
      Size = 60
    end
    object CopieRembTVAMontantHT: TFloatField
      FieldName = 'MontantHT'
      DisplayFormat = '#,##0'
    end
    object CopieRembTVAMontantTVA: TFloatField
      FieldName = 'MontantTVA'
      DisplayFormat = '#,##0'
    end
    object CopieRembTVADateRglt: TDateTimeField
      FieldName = 'DateRglt'
    end
    object CopieRembTVANIF: TWideStringField
      FieldName = 'NIF'
      FixedChar = True
    end
    object CopieRembTVAStat: TWideStringField
      DisplayWidth = 20
      FieldName = 'Stat'
    end
    object CopieRembTVAPcsAchat: TWideStringField
      FieldName = 'PcsAchat'
      FixedChar = True
      Size = 10
    end
    object CopieRembTVAPcsRglt: TWideStringField
      FieldName = 'PcsRglt'
      FixedChar = True
      Size = 30
    end
    object CopieRembTVACompteFnrs: TWideStringField
      FieldName = 'CompteFnrs'
      FixedChar = True
    end
    object CopieRembTVATP: TWideStringField
      FieldName = 'TP'
      FixedChar = True
    end
    object CopieRembTVAQUIT: TWideStringField
      FieldName = 'QUIT'
      FixedChar = True
    end
    object CopieRembTVADateTP: TDateTimeField
      FieldName = 'DateTP'
    end
    object CopieRembTVADateQuit: TDateTimeField
      FieldName = 'DateQuit'
    end
    object CopieRembTVAAdresse: TWideStringField
      FieldName = 'Adresse'
      FixedChar = True
      Size = 40
    end
    object CopieRembTVADatePaie: TStringField
      FieldKind = fkCalculated
      FieldName = 'DatePaie'
      Calculated = True
    end
    object CopieRembTVAlettra: TWideStringField
      FieldName = 'lettra'
      Size = 5
    end
    object CopieRembTVAMtRetenu: TWideStringField
      FieldName = 'MtRetenu'
      Size = 15
    end
  end
  object OperationFichier: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    Left = 336
    Top = 369
  end
  object Q_RembTVAByLigne: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select ObjetFact, MontantTTC, compteFnrs'
      'from RembTVA'
      'where ligneTVA=:a')
    Left = 38
    Top = 307
    object Q_RembTVAByLigneObjetFact: TWideStringField
      FieldName = 'ObjetFact'
      FixedChar = True
      Size = 60
    end
    object Q_RembTVAByLignemontantttc: TLargeintField
      FieldName = 'montantttc'
    end
    object Q_RembTVAByLignecompteFnrs: TWideStringField
      FieldName = 'compteFnrs'
      FixedChar = True
    end
  end
  object Q_NumCpt: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select Intitule from NumCpt'
      'where NumCpt=:a')
    Left = 137
    Top = 307
    object Q_NumCptIntitule: TWideStringField
      FieldName = 'Intitule'
      FixedChar = True
      Size = 100
    end
  end
  object q_RembTVA_Libelle: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select ObjetFact from RembTVA'
      'where LigneTVA=:a'
      ' ')
    Left = 232
    Top = 307
    object q_RembTVA_LibelleObjetFact: TWideStringField
      FieldName = 'ObjetFact'
      FixedChar = True
      Size = 60
    end
  end
  object Copier: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = RRembTVACalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from RembTVA2')
    Left = 336
    Top = 307
  end
  object CalcRubrique: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select sum(MontantTVA) as Mt, '#39's'#39' as statistique'
      'from RembTVA2'
      'where (rubrique>=:a)and(rubrique<=:b)')
    Left = 454
    Top = 307
  end
  object qOperationTVA: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select  0.1 as Mt from OperationTVA')
    Left = 559
    Top = 307
    object qOperationTVAMt: TBCDField
      FieldName = 'Mt'
      Precision = 28
      Size = 1
    end
  end
  object creRembTVA2: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    Left = 559
    Top = 66
  end
  object LstTiersRubrique: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    Left = 38
    Top = 369
  end
  object qParametrTiers: TADOQuery
    Connection = DaConnect.C_Compta
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * from Parametr'
      'where (TypCalcul='#39'Rubrique'#39') and (Left(Tiers,:a)=:b)'
      'and (not desactiver)')
    Left = 137
    Top = 369
    object qParametrTiersNumero: TIntegerField
      FieldName = 'Numero'
    end
    object qParametrTiersLibelle: TWideStringField
      FieldName = 'Libelle'
      Size = 100
    end
    object qParametrTiersDescription: TWideStringField
      FieldName = 'Description'
      Size = 100
    end
    object qParametrTiersImpoCompte: TWideStringField
      FieldName = 'ImpoCompte'
      Size = 50
    end
    object qParametrTiersImpoTiers: TWideStringField
      FieldName = 'ImpoTiers'
      Size = 50
    end
    object qParametrTiersTiers: TWideStringField
      FieldName = 'Tiers'
      Size = 50
    end
    object qParametrTiersRubrique: TWideStringField
      FieldName = 'Rubrique'
    end
    object qParametrTiersSens: TWideStringField
      FieldName = 'Sens'
      Size = 10
    end
    object qParametrTiersValeur: TFloatField
      FieldName = 'Valeur'
    end
  end
  object ListeTiers: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select p.Numero, p.Description, p.Tiers, round(p.Valeur) as val,' +
        ' r.NIF, r.statistique, DateEsc, NumFact,'
      
        'r.RS as Raison, r.ObjetFact, r.Adresse as Adr, r.HTLigne as Mont' +
        'antHT, r.MontantTVA as TVA, r.Compte, r.JrTVA from Parametr p, R' +
        'embTVA2 r'
      'where p.Rubrique=r.Rubrique')
    Left = 232
    Top = 369
    object ListeTiersNumero: TIntegerField
      FieldName = 'Numero'
    end
    object ListeTiersDescription: TWideStringField
      FieldName = 'Description'
      Size = 100
    end
    object ListeTiersTiers: TWideStringField
      FieldName = 'Tiers'
      Size = 50
    end
    object ListeTiersval: TFloatField
      FieldName = 'val'
    end
    object ListeTiersNIF: TWideStringField
      FieldName = 'NIF'
      FixedChar = True
    end
    object ListeTiersstatistique: TWideStringField
      FieldName = 'statistique'
      FixedChar = True
    end
    object ListeTiersDateEsc: TDateTimeField
      FieldName = 'DateEsc'
    end
    object ListeTiersNumFact: TWideStringField
      FieldName = 'NumFact'
      FixedChar = True
    end
    object ListeTiersRaison: TWideStringField
      FieldName = 'Raison'
      FixedChar = True
      Size = 50
    end
    object ListeTiersObjetFact: TWideStringField
      FieldName = 'ObjetFact'
      Size = 255
    end
    object ListeTiersAdr: TWideStringField
      FieldName = 'Adr'
      FixedChar = True
      Size = 127
    end
    object ListeTiersMontantHT: TBCDField
      FieldName = 'MontantHT'
      Precision = 19
    end
    object ListeTiersTVA: TBCDField
      FieldName = 'TVA'
      Precision = 19
    end
    object ListeTiersCompte: TWideStringField
      FieldName = 'Compte'
      FixedChar = True
    end
    object ListeTiersJrTVA: TWideStringField
      FieldName = 'JrTVA'
      FixedChar = True
      Size = 10
    end
    object ListeTiersAdr2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Adr2'
      Size = 255
      Calculated = True
    end
  end
  object TOuvrir: TADOTable
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Left = 559
    Top = 369
  end
  object Q_NumDiver: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select NIF,Statistique from NumDiver'
      'where NumCpt=:a')
    Left = 662
    Top = 124
    object Q_NumDiverNIF: TWideStringField
      FieldName = 'NIF'
      FixedChar = True
    end
    object Q_NumDiverStatistique: TWideStringField
      FieldName = 'Statistique'
      FixedChar = True
    end
  end
  object qGrillerDec: TADOQuery
    Connection = DaConnect.C_Compta
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * from GrillerDec'
      'where codeSoc=:a')
    Left = 559
    Top = 124
    object qGrillerDecCodeSoc: TWideStringField
      FieldName = 'CodeSoc'
    end
    object qGrillerDecgriller: TStringField
      FieldName = 'griller'
      Size = 5
    end
  end
  object Operation1: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    Left = 664
    Top = 184
  end
  object Operation2: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    Left = 664
    Top = 240
  end
  object ADOTable2: TADOTable
    Connection = DaConnect.C_Document
    Left = 664
    Top = 304
  end
end
