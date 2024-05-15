object DaConsolide: TDaConsolide
  OldCreateOrder = False
  Left = 211
  Top = 132
  Height = 228
  Width = 668
  object ViderPrepCons: TADOQuery
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'DELETE PrePCons.*'
      'FROM PrePCons;'
      '')
    Left = 24
    Top = 24
  end
  object LstAgence: TADOQuery
    Connection = DaConnect.C_Societe
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT Consolide.Agence, Societe.Chemin'
      
        'FROM Consolide INNER JOIN Societe ON Consolide.Agence = Societe.' +
        'Code'
      'WHERE (Consolide.Siege=:a)')
    Left = 96
    Top = 24
    object LstAgenceagence: TWideStringField
      FieldName = 'agence'
      FixedChar = True
      Size = 10
    end
    object LstAgenceChemin: TWideStringField
      FieldName = 'Chemin'
      FixedChar = True
      Size = 127
    end
  end
  object T_PrePCons: TADOTable
    Connection = DaConnect.C_Document
    CommandTimeout = 0
    TableName = 'PrePCons'
    Left = 24
    Top = 88
    object T_PrePConsCOMPTE: TWideStringField
      FieldName = 'COMPTE'
      FixedChar = True
    end
    object T_PrePConsDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object T_PrePConsCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object T_PrePConsDEBITAV: TFloatField
      FieldName = 'DEBITAV'
    end
    object T_PrePConsCREDITAV: TFloatField
      FieldName = 'CREDITAV'
    end
    object T_PrePConsDEBITPER: TFloatField
      FieldName = 'DEBITPER'
    end
    object T_PrePConsCREDITPER: TFloatField
      FieldName = 'CREDITPER'
    end
    object T_PrePConsAUTRE: TWideStringField
      FieldName = 'AUTRE'
      FixedChar = True
      Size = 30
    end
    object T_PrePConsINTITUL: TWideStringField
      FieldName = 'INTITUL'
      FixedChar = True
      Size = 40
    end
  end
  object RecupPrepCons: TADOTable
    Connection = DaConnect.C_Temporaire
    CommandTimeout = 0
    TableName = 'PrePCons'
    Left = 104
    Top = 88
    object RecupPrepConsCOMPTE: TWideStringField
      FieldName = 'COMPTE'
      FixedChar = True
    end
    object RecupPrepConsDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object RecupPrepConsCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object RecupPrepConsDEBITAV: TFloatField
      FieldName = 'DEBITAV'
    end
    object RecupPrepConsCREDITAV: TFloatField
      FieldName = 'CREDITAV'
    end
    object RecupPrepConsDEBITPER: TFloatField
      FieldName = 'DEBITPER'
    end
    object RecupPrepConsCREDITPER: TFloatField
      FieldName = 'CREDITPER'
    end
    object RecupPrepConsAUTRE: TWideStringField
      FieldName = 'AUTRE'
      FixedChar = True
      Size = 30
    end
    object RecupPrepConsINTITUL: TWideStringField
      FieldName = 'INTITUL'
      FixedChar = True
      Size = 40
    end
  end
  object BalConsolide: TADOQuery
    Connection = DaConnect.C_Document
    OnCalcFields = BalConsolideCalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'TRANSFORM Sum(MONTANT) AS SommeDeMONTANT'
      'SELECT COMPTE'
      'FROM PrepTotal'
      'GROUP BY COMPTE'
      'ORDER BY COMPTE, Autre, Valeur'
      'PIVOT [Valeur]+[Autre];')
    Left = 200
    Top = 88
    object BalConsolideDebit1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debit1'
      Calculated = True
    end
    object BalConsolideCredit1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credit1'
      Calculated = True
    end
    object BalConsolideDebit2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debit2'
      Calculated = True
    end
    object BalConsolideCredit2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credit2'
      Calculated = True
    end
    object BalConsolideDebit3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debit3'
      Calculated = True
    end
    object BalConsolideCredit3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credit3'
      Calculated = True
    end
    object BalConsolideDebit4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debit4'
      Calculated = True
    end
    object BalConsolideCredit4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credit4'
      Calculated = True
    end
    object BalConsolideDebit5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debit5'
      Calculated = True
    end
    object BalConsolideCredit5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credit5'
      Calculated = True
    end
    object BalConsolideDebit6: TFloatField
      FieldName = 'Debit6'
    end
    object BalConsolideCredit6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credit6'
      Calculated = True
    end
    object BalConsolideTotDebit: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotDebit'
      Calculated = True
    end
    object BalConsolideTotCredit: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotCredit'
      Calculated = True
    end
    object BalConsolideCompteD: TStringField
      FieldName = 'CompteD'
    end
    object BalConsolideCompte: TStringField
      FieldKind = fkCalculated
      FieldName = 'Compte'
      Calculated = True
    end
    object BalConsolideStTotCred: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StTotCred'
      Calculated = True
    end
    object BalConsolideStTotDeb: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StTotDeb'
      Calculated = True
    end
  end
  object q_balance_conso_periode: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = 'Z'
      end>
    SQL.Strings = (
      
        'SELECT CASE WHEN compte >= auxili_fourch.compte_de AND compte < ' +
        '(auxili_fourch.compte_de || '#39'Z'#39') THEN compte_de ELSE compte END ' +
        'AS compte_auxi,'
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)-SUM(' +
        'CASE WHEN debit='#39'C'#39' then  montant ELSE 0 END)>0 THEN '
      
        '  SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)-SUM(CASE WHE' +
        'N debit='#39'C'#39' then  montant ELSE 0 END) else 0 end AS debit,'
      '  '
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)-SUM(' +
        'CASE WHEN debit='#39'C'#39' then  montant ELSE 0 END)<0 THEN '
      
        '  -SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)+SUM(CASE WH' +
        'EN debit='#39'C'#39' then  montant ELSE 0 END) else 0 end AS credit,'
      ''
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's210'#39' then  montant ELSE 0 END)-'
      
        '   SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's2' +
        '10'#39' then  montant ELSE 0 END)>0 THEN '
      
        '  SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's21' +
        '0'#39' then  montant ELSE 0 END)-'
      
        '    SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's' +
        '210'#39' then  montant ELSE 0 END) else 0 end AS debit_210,'
      '    '
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's210'#39' then  montant ELSE 0 END)-'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's21' +
        '0'#39' then  montant ELSE 0 END)<0 THEN '
      
        '  -SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's2' +
        '10'#39' then  montant ELSE 0 END)+'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's21' +
        '0'#39' then  montant ELSE 0 END) else 0 end AS credit_210,'
      ''
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's311'#39' then  montant ELSE 0 END)-'
      
        '   SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's3' +
        '11'#39' then  montant ELSE 0 END)>0 THEN '
      
        '  SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's31' +
        '1'#39' then  montant ELSE 0 END)-'
      
        '    SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's' +
        '311'#39' then  montant ELSE 0 END) else 0 end AS debit_311,'
      '    '
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's311'#39' then  montant ELSE 0 END)-'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's31' +
        '1'#39' then  montant ELSE 0 END)<0 THEN '
      
        '  -SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's3' +
        '11'#39' then  montant ELSE 0 END)+'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's31' +
        '1'#39' then  montant ELSE 0 END) else 0 end  AS credit_311'
      ''
      ''
      '   FROM eltjrn_conso,auxili_fourch'
      
        '  WHERE compte >= auxili_fourch.compte_de AND compte < (auxili_f' +
        'ourch.compte_de || '#39'Z'#39') OR '
      
        '  compte > auxili_fourch.compte_de AND compte < auxili_fourch.co' +
        'mpte_a'
      '  '
      ' AND periode >= :a'
      ' AND periode <= :b '
      
        'GROUP BY CASE WHEN compte >= auxili_fourch.compte_de AND compte ' +
        '< (auxili_fourch.compte_de || '#39'Z'#39') THEN compte_de ELSE compte EN' +
        'D'
      
        ' ORDER BY CASE WHEN compte >= auxili_fourch.compte_de AND compte' +
        ' < (auxili_fourch.compte_de || '#39'Z'#39') THEN compte_de ELSE compte E' +
        'ND;'
      ''
      ''
      ''
      '')
    Left = 192
    Top = 24
    object q_balance_conso_periodecompte_auxi: TWideStringField
      FieldName = 'compte_auxi'
      ReadOnly = True
      Size = 255
    end
    object q_balance_conso_periodedebit: TFloatField
      FieldName = 'debit'
      ReadOnly = True
    end
    object q_balance_conso_periodecredit: TFloatField
      FieldName = 'credit'
      ReadOnly = True
    end
    object q_balance_conso_periodedebit_210: TFloatField
      FieldName = 'debit_210'
      ReadOnly = True
    end
    object q_balance_conso_periodedebit_311: TFloatField
      FieldName = 'debit_311'
      ReadOnly = True
    end
    object q_balance_conso_periodecredit_210: TFloatField
      FieldName = 'credit_210'
      ReadOnly = True
    end
    object q_balance_conso_periodecredit_311: TFloatField
      FieldName = 'credit_311'
      ReadOnly = True
    end
  end
  object q_numcpt_conso: TADOQuery
    Connection = DaConnect.C_Document
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM numcpt_conso'
      'WHERE numcpt=:a')
    Left = 312
    Top = 24
    object q_numcpt_consointitule: TWideStringField
      FieldName = 'intitule'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    Left = 320
    Top = 88
  end
  object q_Classe: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 1
        Value = 'Z'
      end
      item
        Name = 'c'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'd'
        DataType = ftString
        Size = 1
        Value = '5'
      end>
    SQL.Strings = (
      'SELECT'
      
        ' CASE WHEN SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)-SUM' +
        '(CASE WHEN debit='#39'C'#39' then  montant ELSE 0 END)>0 THEN '
      
        '  SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)-SUM(CASE WHE' +
        'N debit='#39'C'#39' then  montant ELSE 0 END) else 0 end AS debit,'
      '  '
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)-SUM(' +
        'CASE WHEN debit='#39'C'#39' then  montant ELSE 0 END)<0 THEN '
      
        '  -SUM(CASE WHEN debit='#39'D'#39' then  montant ELSE 0 END)+SUM(CASE WH' +
        'EN debit='#39'C'#39' then  montant ELSE 0 END) else 0 end AS credit,'
      ''
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's210'#39' then  montant ELSE 0 END)-'
      
        '   SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's2' +
        '10'#39' then  montant ELSE 0 END)>0 THEN '
      
        '  SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's21' +
        '0'#39' then  montant ELSE 0 END)-'
      
        '    SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's' +
        '210'#39' then  montant ELSE 0 END) else 0 end AS debit_210,'
      '    '
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's210'#39' then  montant ELSE 0 END)-'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's21' +
        '0'#39' then  montant ELSE 0 END)<0 THEN '
      
        '  -SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's2' +
        '10'#39' then  montant ELSE 0 END)+'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's21' +
        '0'#39' then  montant ELSE 0 END) else 0 end AS credit_210,'
      ''
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's311'#39' then  montant ELSE 0 END)-'
      
        '   SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's3' +
        '11'#39' then  montant ELSE 0 END)>0 THEN '
      
        '  SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's31' +
        '1'#39' then  montant ELSE 0 END)-'
      
        '    SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's' +
        '311'#39' then  montant ELSE 0 END) else 0 end AS debit_311,'
      '    '
      
        'CASE WHEN SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4' +
        ') = '#39's311'#39' then  montant ELSE 0 END)-'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's31' +
        '1'#39' then  montant ELSE 0 END)<0 THEN '
      
        '  -SUM(CASE WHEN debit='#39'D'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's3' +
        '11'#39' then  montant ELSE 0 END)+'
      
        '  SUM(CASE WHEN debit='#39'C'#39' AND "left"(eltjrn_conso.bdd, 4) = '#39's31' +
        '1'#39' then  montant ELSE 0 END) else 0 end  AS credit_311'
      ''
      '   FROM eltjrn_conso,auxili_fourch'
      
        '  WHERE compte >= auxili_fourch.compte_de AND compte < (auxili_f' +
        'ourch.compte_de || '#39'Z'#39') OR '
      
        '  compte > auxili_fourch.compte_de AND compte < auxili_fourch.co' +
        'mpte_a'
      '  '
      ' AND periode >= :a'
      ' AND periode <= :b '
      ' AND LEFT(compte,1)>= :c AND LEFT(compte,1)<= :d'
      ''
      ''
      '')
    Left = 440
    Top = 24
  end
end
