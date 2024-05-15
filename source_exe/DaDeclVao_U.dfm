object DaDeclVao: TDaDeclVao
  OldCreateOrder = False
  Left = 310
  Top = 102
  Height = 489
  Width = 952
  object s_caneva_dcomm: TDataSource
    DataSet = caneva_dcomm
    Left = 48
    Top = 72
  end
  object caneva_dcomm: TADOTable
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    TableName = 'caneva_dcomm'
    Left = 48
    Top = 10
    object caneva_dcommcode: TWideStringField
      DisplayWidth = 15
      FieldName = 'code'
      Size = 255
    end
    object caneva_dcommdescription: TWideStringField
      DisplayWidth = 30
      FieldName = 'description'
      Size = 255
    end
  end
  object s_tva_excel: TDataSource
    DataSet = tva_excel
    OnDataChange = s_tva_excelDataChange
    Left = 40
    Top = 200
  end
  object s_tva_compte: TDataSource
    DataSet = tva_compte
    Left = 112
    Top = 200
  end
  object tva_excel: TADOQuery
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
      'SELECT '
      
        'CASE WHEN x.num_ligne / 100 = 1 THEN '#39'01 DETERMINATION DU CHIFFR' +
        'ES D AFFAIRES'#39' ELSE'
      '  CASE WHEN x.num_ligne / 100 = 2 THEN '#39'02 TVA COLLECTE'#39' ELSE'
      
        '    CASE WHEN x.num_ligne / 100 = 3 THEN '#39'03 TVA DEDUCTIBLE'#39' ELS' +
        'E'
      
        '      CASE WHEN x.num_ligne / 100 = 4  OR x.num_ligne / 100 = 5 ' +
        ' OR x.num_ligne / 100 = 6  THEN '#39'04 CREDIT ET REGULARISATION'#39' EL' +
        'SE '#39'SYNTHESE'#39' END'
      '    END'
      '  END'
      'END as titre,'
      'x.num_ligne, x.libelles, typa, niveau_calc,'
      
        #9'CAST(SUM(CASE WHEN left(bdd,4)='#39's210'#39'  THEN  cmontant ELSE 0 EN' +
        'D) AS bigint) AS stamatave,'
      
        #9'CAST(SUM(CASE WHEN left(bdd,4)='#39's311'#39'  THEN  cmontant ELSE 0 EN' +
        'D) AS bigint) AS sdiego, '
      #9'CAST(SUM(cmontant) as bigint) smontant'
      'FROM tva_excel as x'
      'LEFT JOIN('
      '  SELECT a.num_ligne, a.compte_lign,bdd,'
      
        #9'CAST(CASE WHEN signe='#39'+'#39' THEN SUM(CASE WHEN  debit='#39'D'#39' THEN mon' +
        'tant ELSE - montant END) ELSE '
      
        #9#9'CASE WHEN signe='#39'-'#39' THEN SUM(CASE WHEN  debit='#39'D'#39' THEN -montan' +
        't ELSE montant END) ELSE'
      
        #9#9#9'CASE WHEN signe='#39'*'#39' THEN SUM(CASE WHEN  debit='#39'D'#39' THEN montan' +
        't ELSE 0 END) ELSE '
      
        #9#9#9#9'CASE WHEN signe='#39'*'#39' THEN SUM(CASE WHEN  debit='#39'D'#39' THEN 0 ELS' +
        'E montant END) END '
      #9#9#9'END'
      #9#9'END'
      #9'END AS bigint)  AS cmontant'
      '  FROM tva_compte as a, '
      '  eltjrn_conso as b, '
      '  tva_excel as d '
      
        '  WHERE b.compte>=a.compte_lign and b.compte<(a.compte_lign||'#39'Z'#39 +
        ')'
      '  AND(a.taxe='#39'TOUT'#39' OR'
      
        '     (a.taxe='#39'TAX.'#39' AND b.compte IN (SELECT numcpt FROM cpt_ntax' +
        '))OR'
      
        '     (a.taxe='#39'N/TAX.'#39' AND b.compte IN (SELECT numcpt FROM cpt_ta' +
        'x))'
      '  )'
      '    AND (periode>= :a ) and (periode<= :b )'
      '  AND (a.num_ligne = d.num_ligne) AND(typa = '#39'Ligne'#39')'
      '  AND (b.codejrnx <>'#39'AN'#39') AND (b.codejrnx <> '#39'CL'#39')'
      '  GROUP BY a.num_ligne,a.compte_lign,signe,bdd'
      ') as y ON x.num_ligne= y.num_ligne'
      'GROUP BY x.num_ligne, x.libelles, typa, niveau_calc'
      'ORDER BY x.num_ligne')
    Left = 40
    Top = 138
    object tva_exceltitre: TWideStringField
      DisplayWidth = 50
      FieldName = 'titre'
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object tva_excelnum_ligne: TIntegerField
      FieldName = 'num_ligne'
      ReadOnly = True
    end
    object tva_excellibelles: TWideStringField
      DisplayWidth = 55
      FieldName = 'libelles'
      Size = 255
    end
    object tva_exceltypa: TWideStringField
      FieldName = 'typa'
      Visible = False
      Size = 25
    end
    object tva_excelniveau_calc: TSmallintField
      FieldName = 'niveau_calc'
      Required = True
    end
    object tva_excelstamatave: TLargeintField
      FieldName = 'stamatave'
      ReadOnly = True
    end
    object tva_excelsdiego: TLargeintField
      FieldName = 'sdiego'
      ReadOnly = True
    end
    object tva_excelsmontant: TLargeintField
      FieldName = 'smontant'
      ReadOnly = True
    end
    object tva_exceltmontant: TFloatField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'tmontant'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'montant'
      KeyFields = 'num_ligne'
      DisplayFormat = '#,##0'
      Lookup = True
    end
    object tva_exceltdiego: TFloatField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'tdiego'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'diego'
      KeyFields = 'num_ligne'
      DisplayFormat = '#,##0'
      Lookup = True
    end
    object tva_excelttamatave: TFloatField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'ttamatave'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'tamatave'
      KeyFields = 'num_ligne'
      DisplayFormat = '#,##0'
      Lookup = True
    end
  end
  object q_Montant_tva_compte: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
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
      'SELECT x.num_ligne, smontant '
      'from tva_excel as x'
      'LEFT JOIN ('
      '  SELECT a.num_ligne, '
      
        '  CAST(SUM(CASE WHEN debit=CASE WHEN signe='#39'+'#39' THEN '#39'D'#39' ELSE '#39'C'#39 +
        ' END THEN montant ELSE - montant END)AS bigint) AS smontant'
      
        '  FROM tva_compte as a, eltjrn as b, journal as c, tva_excel as ' +
        'd '
      
        '  WHERE b.compte>=a.compte_lign and b.compte<(a.compte_lign||'#39'Z'#39 +
        ')'
      '  AND (c.code=b.journal) AND (periode>=:a) AND (periode<=:b)'
      '  AND (a.num_ligne = d.num_ligne) AND(typa = '#39'Ligne'#39')'
      '  GROUP BY a.num_ligne'
      ') as y ON x.num_ligne= y.num_ligne'
      'ORDER BY x.num_ligne'
      ' ')
    Left = 304
    Top = 138
    object q_Montant_tva_comptenum_ligne: TIntegerField
      FieldName = 'num_ligne'
      ReadOnly = True
    end
    object q_Montant_tva_comptesmontant: TLargeintField
      FieldName = 'smontant'
      ReadOnly = True
    end
  end
  object q_TVAexcel_NumLigne: TADOQuery
    Active = True
    Connection = DaConnect.C_Compta
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tva_excel'
      'WHERE num_ligne = :a ')
    Left = 546
    Top = 138
    object q_TVAexcel_NumLignelibelles: TWideStringField
      FieldName = 'libelles'
      Size = 255
    end
    object q_TVAexcel_NumLignecompte: TWideStringField
      FieldName = 'compte'
      Size = 255
    end
    object q_TVAexcel_NumLigneligne: TWideStringField
      FieldName = 'ligne'
      Size = 255
    end
    object q_TVAexcel_NumLignetypa: TWideStringField
      FieldName = 'typa'
      Size = 25
    end
    object q_TVAexcel_NumLigneancien_num: TFloatField
      FieldName = 'ancien_num'
    end
    object q_TVAexcel_NumLignenum_ligne: TIntegerField
      FieldName = 'num_ligne'
    end
    object q_TVAexcel_NumLigneniveau_calc: TSmallintField
      FieldName = 'niveau_calc'
    end
  end
  object sq_TVAexcel_NumLigne: TDataSource
    DataSet = q_TVAexcel_NumLigne
    Left = 546
    Top = 200
  end
  object q_tva_montant: TADOQuery
    Active = True
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    AfterInsert = q_tva_montantAfterInsert
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 2
        Value = '0'
      end
      item
        Name = 'c'
        DataType = ftString
        Size = 1
        Value = 'Z'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tva_montant'
      'WHERE num_ligne= :a'
      'AND periode_de = :b'
      'AND periode_a = :c')
    Left = 184
    Top = 138
    object q_tva_montantnum_ligne: TIntegerField
      FieldName = 'num_ligne'
    end
    object q_tva_montantperiode_de: TWideStringField
      FieldName = 'periode_de'
      Size = 10
    end
    object q_tva_montantperiode_a: TWideStringField
      FieldName = 'periode_a'
      Size = 10
    end
    object q_tva_montanttamatave: TLargeintField
      FieldName = 'tamatave'
    end
    object q_tva_montantdiego: TLargeintField
      FieldName = 'diego'
    end
    object q_tva_montantmontant: TLargeintField
      FieldName = 'montant'
    end
  end
  object q_tva_montant_periode: TADOQuery
    Active = True
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
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
        Size = 2
        Value = 'Z'
      end>
    SQL.Strings = (
      'SELECT num_ligne, tamatave, diego,montant'
      'FROM tva_montant'
      'WHERE periode_de = :a'
      'AND periode_a = :b')
    Left = 312
    Top = 200
    object q_tva_montant_periodenum_ligne: TIntegerField
      FieldName = 'num_ligne'
    end
    object q_tva_montant_periodetamatave: TLargeintField
      FieldName = 'tamatave'
    end
    object q_tva_montant_periodediego: TLargeintField
      FieldName = 'diego'
    end
    object q_tva_montant_periodemontant: TLargeintField
      FieldName = 'montant'
    end
  end
  object q_tva_detail_compte: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
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
        Size = -1
        Value = Null
      end
      item
        Name = 'd'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'x'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'x'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'x'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'e'
        DataType = ftString
        Size = 4
        Value = 's210'
      end>
    SQL.Strings = (
      
        'SELECT bdd, to_date(periode||to_char(jour,'#39'0'#39'),'#39'YYYY/MMM/DD'#39') AS' +
        ' daty,'
      '    journal,'
      '    compte,'
      '    CASE WHEN debit='#39'D'#39' THEN montant ELSE null END AS debit,'
      '    CASE WHEN debit='#39'C'#39' THEN montant ELSE null END AS credit,'
      '    numfact,'
      '    libelle'
      '   FROM eltjrn_conso'
      'WHERE codejrnx<>'#39'AN'#39' AND codejrnx<>'#39'CL'#39' '
      'AND (periode>=:a) AND (periode<=:b)'
      'AND compte in (--journal || bdd in ('
      '   SELECT compte'
      '   FROM eltjrn_conso '
      '   WHERE compte >=:c '
      '   AND compte<=(:d || '#39'Z'#39')'
      '    AND(:x ='#39'TOUT'#39' OR'
      '    (:x ='#39'TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_ntax))OR'
      '    (:x ='#39'N/TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_tax)))'
      '    GROUP BY compte'
      ')'
      'AND LEFT(bdd,4) = :e'
      'ORDER BY journal')
    Left = 430
    Top = 138
    object q_tva_detail_comptebdd: TWideStringField
      FieldName = 'bdd'
      Size = 8
    end
    object q_tva_detail_comptedaty: TDateField
      FieldName = 'daty'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object q_tva_detail_comptejournal: TWideStringField
      FieldName = 'journal'
      ReadOnly = True
      Size = 10
    end
    object q_tva_detail_comptecompte: TWideStringField
      DisplayWidth = 12
      FieldName = 'compte'
      ReadOnly = True
    end
    object q_tva_detail_comptedebit: TLargeintField
      FieldName = 'debit'
      ReadOnly = True
    end
    object q_tva_detail_comptecredit: TLargeintField
      FieldName = 'credit'
      ReadOnly = True
    end
    object q_tva_detail_comptenumfact: TWideStringField
      DisplayWidth = 10
      FieldName = 'numfact'
      ReadOnly = True
    end
    object q_tva_detail_comptelibelle: TWideStringField
      FieldName = 'libelle'
      ReadOnly = True
      Size = 60
    end
  end
  object sq_tva_detail_compte: TDataSource
    DataSet = q_tva_detail_compte
    Left = 422
    Top = 200
  end
  object s_tva_condition: TDataSource
    DataSet = tva_condition
    Left = 657
    Top = 200
  end
  object tva_compte: TADOQuery
    Connection = DaConnect.C_Compta
    CursorType = ctStatic
    AfterInsert = tva_compteAfterInsert
    OnCalcFields = tva_compteCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tva_compte'
      'WHERE num_ligne= :a'
      'ORDER BY rang')
    Left = 112
    Top = 138
    object tva_compterang: TSmallintField
      DisplayLabel = 'rg'
      DisplayWidth = 2
      FieldName = 'rang'
    end
    object tva_comptenum_ligne: TSmallintField
      FieldName = 'num_ligne'
      Visible = False
    end
    object tva_comptetaxe: TWideStringField
      FieldName = 'taxe'
      Size = 10
    end
    object tva_comptesigne: TWideStringField
      DisplayLabel = 'sn'
      FieldName = 'signe'
      Size = 1
    end
    object tva_comptecompte_lign: TWideStringField
      DisplayWidth = 10
      FieldName = 'compte_lign'
      Size = 255
    end
    object tva_compteIntitule: TStringField
      FieldKind = fkLookup
      FieldName = 'Intitule'
      LookupDataSet = Special.NumCp
      LookupKeyFields = 'NumCpt'
      LookupResultField = 'Intitule'
      KeyFields = 'compte_lign'
      Visible = False
      Size = 30
      Lookup = True
    end
    object tva_comptetypa: TStringField
      FieldKind = fkLookup
      FieldName = 'typa'
      LookupDataSet = tout_tva_excel
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'typa'
      KeyFields = 'num_ligne'
      Visible = False
      Size = 10
      Lookup = True
    end
    object tva_comptedescription: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'description'
      Size = 50
      Calculated = True
    end
    object tva_comptedesc_ligne: TStringField
      FieldKind = fkLookup
      FieldName = 'desc_ligne'
      LookupDataSet = tout_tva_excel
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'libelles'
      KeyFields = 'compte_lign'
      Visible = False
      Size = 50
      Lookup = True
    end
    object tva_comptetamatave: TFloatField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'tamatave'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'tamatave'
      KeyFields = 'compte_lign'
      DisplayFormat = '#,##0'
      Lookup = True
    end
    object tva_comptediego: TFloatField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'diego'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'diego'
      KeyFields = 'compte_lign'
      DisplayFormat = '#,##0'
      Lookup = True
    end
    object tva_compteMontant: TFloatField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'Montant'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'montant'
      KeyFields = 'compte_lign'
      DisplayFormat = '#,##0'
      Lookup = True
    end
  end
  object q_decl_synthetic: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    OnCalcFields = q_decl_syntheticCalcFields
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM x_decl_synthetic'
      'WHERE periode = :a')
    Left = 480
    Top = 10
    object q_decl_syntheticperiode: TWideStringField
      DisplayWidth = 7
      FieldName = 'periode'
      Visible = False
      Size = 10
      Transliterate = False
    end
    object q_decl_syntheticjournal: TWideStringField
      DisplayWidth = 8
      FieldName = 'journal'
      Visible = False
      Size = 10
      Transliterate = False
    end
    object q_decl_syntheticintitule: TWideStringField
      DisplayLabel = 'Nom et pr'#233'noms'
      FieldName = 'intitule'
      Size = 100
    end
    object q_decl_syntheticstatistique: TWideStringField
      DisplayLabel = 'CIN'
      FieldName = 'statistique'
    end
    object q_decl_syntheticNature: TStringField
      DisplayLabel = 'Nature de transaction'
      FieldKind = fkCalculated
      FieldName = 'Nature'
      Calculated = True
    end
    object q_decl_syntheticdaty: TDateField
      FieldName = 'daty'
    end
    object q_decl_syntheticdescription: TWideStringField
      DisplayLabel = 'D'#233'tail de transaction'
      FieldName = 'description'
      Size = 50
      Transliterate = False
    end
    object q_decl_syntheticmontant: TLargeintField
      FieldName = 'montant'
    end
    object q_decl_syntheticmode_paiement: TWideStringField
      DisplayLabel = 'mode paiement'
      FieldName = 'mode_paiement'
      Size = 10
    end
    object q_decl_syntheticimpot: TLargeintField
      DisplayLabel = 'ISI correspondant'
      FieldName = 'impot'
    end
    object q_decl_synthetictiers: TWideStringField
      FieldName = 'tiers'
      Visible = False
      Size = 8190
    end
    object q_decl_syntheticprovince: TWideStringField
      DisplayLabel = 'Province'
      DisplayWidth = 15
      FieldName = 'province'
      Size = 50
    end
    object q_decl_syntheticregion: TWideStringField
      DisplayLabel = 'R'#233'gion'
      DisplayWidth = 20
      FieldName = 'region'
      Size = 50
    end
    object q_decl_syntheticlieu: TWideStringField
      DisplayLabel = 'District'
      DisplayWidth = 20
      FieldName = 'lieu'
      Size = 50
    end
    object q_decl_syntheticadresse: TWideStringField
      DisplayWidth = 50
      FieldName = 'adresse'
      Size = 127
    end
  end
  object q_decl_synth_detail: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM x_decl_synth_detail'
      'WHERE journal = :a')
    Left = 576
    Top = 10
    object q_decl_synth_detailjournal: TWideStringField
      FieldName = 'journal'
      Size = 10
    end
    object q_decl_synth_detaildebit: TLargeintField
      FieldName = 'debit'
    end
    object q_decl_synth_detailcredit: TLargeintField
      FieldName = 'credit'
    end
    object q_decl_synth_detaillibelle: TWideStringField
      FieldName = 'libelle'
      Size = 60
    end
    object q_decl_synth_detailnumfact: TWideStringField
      FieldName = 'numfact'
    end
  end
  object sq_decl_synthetic: TDataSource
    DataSet = q_decl_synthetic
    OnDataChange = sq_decl_syntheticDataChange
    Left = 480
    Top = 64
  end
  object sq_decl_synth_detail: TDataSource
    DataSet = q_decl_synth_detail
    Left = 568
    Top = 64
  end
  object tout_tva_excel: TADOTable
    Active = True
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    CommandTimeout = 0
    TableName = 'tva_excel'
    Left = 304
    Top = 264
  end
  object q_ListeTiers: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
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
      
        'SELECT a.num_ligne,libelles, tiers as compte, intitule, adresse,' +
        ' CAST(sum(montant) AS bigint)  AS montant  from ('
      '  SELECT journal || bdd as expr1, tiers, num_ligne,montant '
      '    FROM eltjrn_conso, tva_compte '
      '    WHERE compte >=compte_lign '
      '    AND compte<=(compte_lign||'#39'Z'#39')'
      '    AND LEFT(bdd,4) = :a'
      '    AND periode = :b'
      '    AND(taxe='#39'TOUT'#39' OR'
      '     (taxe='#39'TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_ntax))OR'
      '     (taxe='#39'N/TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_tax)))'
      '      AND codejrnx<>'#39'AN'#39' AND codejrnx<>'#39'CL'#39
      '    GROUP BY journal, bdd, num_ligne,tiers, montant) as a'
      '    LEFT JOIN tva_excel on tva_excel.num_ligne=a.num_ligne'
      '   LEFT JOIN numcpt ON tiers = numcpt.numcpt'
      '   LEFT JOIN numadres ON numadres.numcpt= numcpt.numcpt'
      
        '--WHERE left(b.compte,2)='#39'40'#39' or left(b.compte,2)='#39'41'#39' or left(b' +
        '.compte,2)='#39'46'#39' '
      
        '  --            or left(b.compte,3)='#39'512'#39' or left(b.compte,3)='#39'5' +
        '13'#39
      '    GROUP BY tiers, libelles,a.num_ligne,intitule, adresse'
      '    ORDER BY num_ligne')
    Left = 744
    Top = 138
    object q_ListeTiersnum_ligne: TSmallintField
      FieldName = 'num_ligne'
      ReadOnly = True
    end
    object q_ListeTierslibelles: TWideStringField
      DisplayWidth = 50
      FieldName = 'libelles'
      ReadOnly = True
      Size = 255
    end
    object q_ListeTierscompte: TWideStringField
      DisplayWidth = 15
      FieldName = 'compte'
      ReadOnly = True
    end
    object q_ListeTiersintitule: TWideStringField
      DisplayWidth = 30
      FieldName = 'intitule'
      ReadOnly = True
      Size = 100
    end
    object q_ListeTiersadresse: TWideStringField
      DisplayWidth = 50
      FieldName = 'adresse'
      ReadOnly = True
      Size = 127
    end
    object q_ListeTiersmontant: TLargeintField
      FieldName = 'montant'
      ReadOnly = True
    end
  end
  object sq_ListeTiers: TDataSource
    DataSet = q_ListeTiers
    Left = 744
    Top = 200
  end
  object q_AnnexeTVA: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'b'
        DataType = ftBoolean
        Size = -1
        Value = False
      end
      item
        Name = 'c'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      
        'CASE WHEN a.num_ligne / 100 = 1 THEN '#39'01 DETERMINATION DU CHIFFR' +
        'ES D AFFAIRES'#39' ELSE'
      '  CASE WHEN a.num_ligne / 100 = 2 THEN '#39'02 TVA COLLECTE'#39' ELSE'
      
        '    CASE WHEN a.num_ligne / 100 = 3 THEN '#39'03 TVA DEDUCTIBLE'#39' ELS' +
        'E'
      
        '      CASE WHEN a.num_ligne / 100 = 4  OR a.num_ligne / 100 = 5 ' +
        ' OR a.num_ligne / 100 = 6  THEN '#39'04 CREDIT ET REGULARISATION'#39' EL' +
        'SE '#39'SYNTHESE'#39' END'
      '    END'
      '  END'
      'END as titre,'
      'a.num_ligne, libelles,'
      '  CASE WHEN LEFT(compte_lign,1)='#39'7'#39' THEN '#39'C'#39' ELSE '
      '    CASE WHEN LEFT(compte_lign,1)='#39'6'#39' THEN '#39'D'#39' ELSE  '
      '      CASE WHEN (a.num_ligne/100)=3 THEN '#39'D'#39' ELSE '
      
        '        CASE WHEN LEFT(compte_lign,5)='#39'44515'#39' THEN '#39'C'#39' ELSE '#39#39' E' +
        'ND'
      '      END'
      '    END'
      '  END AS c_ou_d,'
      
        '  CASE WHEN  LEFT(compte_lign,4)='#39'7072'#39' THEN '#39'E'#39' ELSE '#39'L'#39' END AS' +
        ' e_ou_l,'
      
        '  CASE WHEN  LEFT(compte_lign,4)='#39'7072'#39' THEN '#39'5002197641'#39' ELSE n' +
        'if END AS n_i_f,intitule,  '
      
        '  CASE WHEN  LEFT(compte_lign,4)='#39'7072'#39' THEN '#39#39' ELSE statistique' +
        ' END AS stat,adresse,'
      
        '  CASE WHEN montant_calc IS NULL  THEN  montant ELSE montant_cal' +
        'c END as montant, tva,numfact,'
      '  datefact as date_fact,'
      
        '  CASE WHEN LEFT(compte_lign,4)='#39'7072'#39' OR LEFT(compte_lign,4)='#39'7' +
        '071'#39' THEN '#39'B'#39' ELSE'
      
        '    CASE WHEN LEFT(compte_lign,3)='#39'706'#39' OR LEFT(compte_lign,5)='#39 +
        '44535'#39' OR LEFT(compte_lign,5)='#39'44536'#39' THEN '#39'S'#39' ELSE  '
      
        '      CASE WHEN LEFT(compte_lign,5)='#39'44531'#39' OR LEFT(compte_lign,' +
        '5)='#39'44532'#39' THEN '#39'I'#39' ELSE  '
      
        '        CASE WHEN LEFT(compte_lign,5)='#39'44533'#39' OR LEFT(compte_lig' +
        'n,5)='#39'44534'#39' THEN '#39'B'#39' ELSE '#39#39' END'
      '      END'
      '   END'
      ' END AS nature,  '
      
        '  libelle, datefact as date_paiement,RIGHT(periode, 2) as mois,L' +
        'EFT(periode, 4) as Annee, '
      '  compte_lign, b.compte,ste,   journal, compte_tva '
      '  FROM ('
      
        '    SELECT journal || bdd as expr1,  num_ligne, compte_lign,peri' +
        'ode, jour,LEFT(bdd,4) ste,journal,numfact,libelle,LEFT(bdd,4)||j' +
        'ournal as ste_journal,datefact'
      '    FROM eltjrn_conso, tva_compte '
      '    WHERE compte >=compte_lign '
      '    AND compte<=(compte_lign||'#39'Z'#39')'
      '    AND (LEFT(bdd,4) =  :a  OR :b)  '
      '   AND (periode = :c)'
      '    AND(taxe='#39'TOUT'#39' OR'
      '     (taxe='#39'TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_ntax))OR'
      '     (taxe='#39'N/TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_tax)))'
      '    --GROUP BY journal, bdd, num_ligne, compte_lign'
      '    ) as a'
      '    LEFT JOIN ('
      
        '      SELECT journal || bdd expr2, compte, montant,compte||LEFT(' +
        'bdd,4) AS compte_ste '
      '      FROM eltjrn_conso '
      '      WHERE codejrnx<>'#39'AN'#39' AND codejrnx<>'#39'CL'#39
      '      AND compte=tiers'
      '    ) AS b ON expr1=expr2'
      '    LEFT JOIN tva_excel on tva_excel.num_ligne=a.num_ligne'
      
        '    LEFT JOIN numcpt_conso ON b.compte_ste = numcpt_conso.compte' +
        '_ste'
      
        '    LEFT JOIN numadres_conso ON numadres_conso.compte_ste= numcp' +
        't_conso.compte_ste'
      
        '    LEFT JOIN numdiver_conso ON numdiver_conso.compte_ste = numc' +
        'pt_conso.compte_ste'
      '    LEFT JOIN ('
      ''
      
        '      SELECT left(bdd,4)||journal AS ste_journal,montant as tva,' +
        ' compte AS compte_tva, montant*100/20 as montant_calc'
      '      FROM eltjrn_conso'
      
        '      WHERE compte>='#39'44515'#39' and compte<'#39'4455'#39') as c on a.ste_jou' +
        'rnal = c.ste_journal'
      ''
      
        '    WHERE (left(b.compte,2)='#39'40'#39' or left(b.compte,2)='#39'41'#39' or lef' +
        't(b.compte,2)='#39'46'#39' or '
      '          left(b.compte,3)='#39'512'#39' OR left(b.compte,3)='#39'513'#39') '
      '   --AND  (LEFT(compte_lign,1)='#39'6'#39'  OR  a.num_ligne/100=3)'
      'ORDER BY a.num_ligne, b.compte')
    Left = 40
    Top = 256
    object q_AnnexeTVAtitre: TWideStringField
      FieldName = 'titre'
      ReadOnly = True
      Visible = False
      Size = 8190
    end
    object q_AnnexeTVAnum_ligne: TSmallintField
      FieldName = 'num_ligne'
      ReadOnly = True
      Visible = False
    end
    object q_AnnexeTVAlibelles: TWideStringField
      FieldName = 'libelles'
      ReadOnly = True
      Visible = False
      Size = 255
    end
    object q_AnnexeTVAc_ou_d: TWideStringField
      FieldName = 'c_ou_d'
      ReadOnly = True
      Size = 1
    end
    object q_AnnexeTVAe_ou_l: TWideStringField
      FieldName = 'e_ou_l'
      ReadOnly = True
      Size = 1
    end
    object q_AnnexeTVAn_i_f: TWideStringField
      FieldName = 'n_i_f'
      ReadOnly = True
      Size = 15
    end
    object q_AnnexeTVAintitule: TWideStringField
      DisplayWidth = 25
      FieldName = 'intitule'
      ReadOnly = True
      Size = 100
    end
    object q_AnnexeTVAstat: TWideStringField
      DisplayWidth = 10
      FieldName = 'stat'
      ReadOnly = True
      Size = 255
    end
    object q_AnnexeTVAadresse: TWideStringField
      DisplayWidth = 30
      FieldName = 'adresse'
      ReadOnly = True
      Size = 127
    end
    object q_AnnexeTVAmontant: TLargeintField
      FieldName = 'montant'
      ReadOnly = True
    end
    object q_AnnexeTVAtva: TLargeintField
      FieldName = 'tva'
      ReadOnly = True
    end
    object q_AnnexeTVAnumfact: TWideStringField
      DisplayWidth = 10
      FieldName = 'numfact'
      ReadOnly = True
    end
    object q_AnnexeTVAdate_fact: TDateField
      FieldName = 'date_fact'
      ReadOnly = True
    end
    object q_AnnexeTVAnature: TWideStringField
      FieldName = 'nature'
      ReadOnly = True
      Size = 1
    end
    object q_AnnexeTVAlibelle: TWideStringField
      DisplayWidth = 30
      FieldName = 'libelle'
      ReadOnly = True
      Size = 60
    end
    object q_AnnexeTVAdate_paiement: TDateField
      FieldName = 'date_paiement'
      ReadOnly = True
    end
    object q_AnnexeTVAmois: TWideStringField
      FieldName = 'mois'
      ReadOnly = True
      Size = 2
    end
    object q_AnnexeTVAannee: TWideStringField
      FieldName = 'annee'
      ReadOnly = True
      Size = 4
    end
    object q_AnnexeTVAcompte_lign: TWideStringField
      FieldName = 'compte_lign'
      ReadOnly = True
      Size = 255
    end
    object q_AnnexeTVAcompte: TWideStringField
      FieldName = 'compte'
      ReadOnly = True
      Visible = False
    end
    object q_AnnexeTVAste: TWideStringField
      FieldName = 'ste'
      ReadOnly = True
      Visible = False
      Size = 8190
    end
    object q_AnnexeTVAjournal: TWideStringField
      FieldName = 'journal'
      ReadOnly = True
      Visible = False
      Size = 10
    end
    object q_AnnexeTVAcompte_tva: TWideStringField
      FieldName = 'compte_tva'
      ReadOnly = True
    end
  end
  object sq_AnnexeTVA: TDataSource
    DataSet = q_AnnexeTVA
    Left = 40
    Top = 304
  end
  object sq_tva_montant: TDataSource
    DataSet = q_tva_montant
    Left = 192
    Top = 200
  end
  object tva_condition: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM tva_condition'
      'WHERE num_ligne = :a')
    Left = 656
    Top = 138
    object tva_conditionnum_ligne: TFloatField
      FieldName = 'num_ligne'
    end
    object tva_conditionoperande1: TIntegerField
      FieldName = 'operande1'
    end
    object tva_conditionmt_op1: TFloatField
      FieldKind = fkLookup
      FieldName = 'mt_op1'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'montant'
      KeyFields = 'operande1'
      Lookup = True
    end
    object tva_conditioncomparaison: TWideStringField
      FieldName = 'comparaison'
      Size = 2
    end
    object tva_conditionoperande2: TIntegerField
      FieldName = 'operande2'
    end
    object tva_conditionmt_op2: TFloatField
      FieldKind = fkLookup
      FieldName = 'mt_op2'
      LookupDataSet = q_tva_montant_periode
      LookupKeyFields = 'num_ligne'
      LookupResultField = 'montant'
      KeyFields = 'operande2'
      Lookup = True
    end
    object tva_conditionresultat: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'resultat'
      Calculated = True
    end
  end
  object q_x_dcomm: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    AfterOpen = q_x_dcommAfterOpen
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      '--CREATE VIEW CCCC AS'
      'SELECT c.tiers,'
      '    e.nif,'
      '    e.statistique,'
      '    d.intitule AS rs,'
      '    f.adresse,'
      '    g.lieu,'
      '    f.pays,'
      '    comptabilisee,'
      '    versee, libelle'
      ' from'
      '(SELECT b.tiers, b.libelle,'
      '    SUM(b.compta) comptabilisee,'
      '    SUM(b.compta) versee'
      '   FROM eltjrnU AS X'
      '   join journalu y on x.journal=y.code '
      '     JOIN ( SELECT a.journal, libelle,'
      '            a.compte AS tiers,'
      '            sum(a.montant) AS compta'
      '           FROM eltjrn a'
      '          WHERE a.compte > '#39'40'#39' AND a.compte < '#39'40Z'#39
      
        '          GROUP BY a.journal, a.compte, a.libelle) b ON x.journa' +
        'l = b.journal'
      '  WHERE (x.compte IN ( SELECT numcpt.numcpt'
      '           FROM numcpt,'
      '            caneva_lst_compte'
      
        '          WHERE caneva_lst_compte.code_caneva = '#39'AI'#39' AND numcpt.' +
        'numcpt > caneva_lst_compte.compte_de AND numcpt.numcpt < caneva_' +
        'lst_compte.compte_a)) '
      '          AND "left"(x.journal, 2) <> '#39'AN'#39
      '          AND "left"(y.periode,4 )='#39'2020'#39
      '   group by b.tiers,b.libelle) as c'
      '   LEFT JOIN numcpt d ON c.tiers = d.numcpt'
      '     LEFT JOIN numdiver e ON d.numcpt = e.numcpt'
      '     LEFT JOIN numadres f ON d.numcpt = f.numcpt'
      '     LEFT JOIN lieu g ON f.cp = g.code'
      '     LEFT JOIN pa_region h ON h.code = g.maitre'
      '     LEFT JOIN pa_province i ON i.code = h.maitre;')
    Left = 260
    Top = 10
  end
  object s_q_x_dcomm: TDataSource
    DataSet = q_x_dcomm
    Left = 264
    Top = 64
  end
  object q_caneva_lst_compte: TADOQuery
    Connection = DaConnect.C_Compta
    CursorType = ctStatic
    AfterInsert = q_caneva_lst_compteAfterInsert
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM caneva_lst_compte'
      'WHERE code_caneva = :a')
    Left = 152
    Top = 10
    object q_caneva_lst_comptecode_caneva: TWideStringField
      FieldName = 'code_caneva'
      Size = 10
    end
    object q_caneva_lst_comptecompte_de: TWideStringField
      DisplayWidth = 15
      FieldName = 'compte_de'
      Visible = False
    end
    object q_caneva_lst_comptecompte_a: TWideStringField
      DisplayWidth = 15
      FieldName = 'compte_a'
      Visible = False
    end
    object q_caneva_lst_compteIntitule_de: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'Intitule_de'
      LookupDataSet = Special.NumCp
      LookupKeyFields = 'NumCpt'
      LookupResultField = 'Intitule'
      KeyFields = 'compte_de'
      FixedChar = True
      Size = 30
      Lookup = True
    end
    object q_caneva_lst_compteIntitule_a: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'Intitule_a'
      LookupDataSet = Special.NumCp
      LookupKeyFields = 'NumCpt'
      LookupResultField = 'Intitule'
      KeyFields = 'compte_a'
      Size = 30
      Lookup = True
    end
    object q_caneva_lst_comptecontre_partie1: TWideStringField
      FieldName = 'contre_partie1'
    end
    object q_caneva_lst_comptecontre_partie2: TWideStringField
      FieldName = 'contre_partie2'
    end
    object q_caneva_lst_comptejournal: TWideStringField
      FieldName = 'journal'
      Size = 2
    end
  end
  object sq_caneva_lst_compte: TDataSource
    DataSet = q_caneva_lst_compte
    Left = 160
    Top = 64
  end
  object q_x_dcomm_export: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    AfterOpen = q_x_dcomm_exportAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#39'EXPORT'#39' as rs, CAST(sum(CASE WHEN debit = '#39'D'#39' THEN -mont' +
        'ant ELSE montant END) AS bigint) as compta'
      'FROM eltjrn'
      'WHERE compte>'#39'7072'#39' AND compte<'#39'7072Z'#39
      'AND left(journal,2)<>'#39'CL'#39' AND left(journal,2)<>'#39'AN'#39)
    Left = 360
    Top = 10
    object q_x_dcomm_exportrs: TWideStringField
      FieldName = 'rs'
      ReadOnly = True
      Size = 255
    end
    object q_x_dcomm_exportcompta: TLargeintField
      FieldName = 'compta'
      ReadOnly = True
    end
  end
  object q_x_dcomm_detail: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from eltjrn')
    Left = 696
    Top = 10
    object q_x_dcomm_detailnumero: TIntegerField
      FieldName = 'numero'
      Visible = False
    end
    object q_x_dcomm_detailjournal: TWideStringField
      FieldName = 'journal'
      Size = 10
    end
    object q_x_dcomm_detaildebit: TWideStringField
      FieldName = 'debit'
      Size = 1
    end
    object q_x_dcomm_detaillibelle: TWideStringField
      FieldName = 'libelle'
      Size = 60
    end
    object q_x_dcomm_detailcompte: TWideStringField
      FieldName = 'compte'
    end
    object q_x_dcomm_detailmontant: TLargeintField
      FieldName = 'montant'
    end
    object q_x_dcomm_detailizy: TStringField
      FieldName = 'izy'
      Visible = False
      Size = 5
    end
    object q_x_dcomm_detailcontrepartie: TWideStringField
      FieldName = 'contrepartie'
      Visible = False
    end
    object q_x_dcomm_detailnbcontre: TSmallintField
      FieldName = 'nbcontre'
      Visible = False
    end
    object q_x_dcomm_detailqte: TFloatField
      FieldName = 'qte'
      Visible = False
    end
    object q_x_dcomm_detaildatefact: TDateField
      FieldName = 'datefact'
      Visible = False
    end
    object q_x_dcomm_detailnumfact: TWideStringField
      FieldName = 'numfact'
      Visible = False
    end
    object q_x_dcomm_detailcolis: TFloatField
      FieldName = 'colis'
      Visible = False
    end
    object q_x_dcomm_detailtypx: TWideStringField
      FieldName = 'typx'
      Visible = False
      Size = 30
    end
    object q_x_dcomm_detailsigletaxe: TWideStringField
      FieldName = 'sigletaxe'
      Visible = False
      Size = 10
    end
  end
  object sq_x_dcomm_detail: TDataSource
    DataSet = q_x_dcomm_detail
    Left = 696
    Top = 64
  end
  object q_x_dcomm_plp: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
    AfterOpen = q_x_dcomm_plpAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  code_cn, nom_commun,'#39'kg'#39' as unite, sum(qte) quantite, su' +
        'm(montant) as valeur from'
      '(SELECT compte,substring(compte,5,2) as analyt, qte, montant'
      'FROM eltjrn'
      'WHERE qte is not null '
      'AND compte > '#39'6071'#39' AND compte < '#39'6071Z'#39') as a'
      'JOIN code_analytique on analyt=code'
      'GROUP BY code_cn, nom_commun')
    Left = 824
    Top = 10
  end
  object q_ListeTiers_talo: TADOQuery
    Connection = DaConnect.C_Document
    CursorType = ctStatic
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
      
        'SELECT a.num_ligne,libelles, b.compte, intitule, adresse,sum(mon' +
        'tant) montant  from ('
      '  SELECT journal || bdd as expr1,  num_ligne '
      '    FROM eltjrn_conso, tva_compte '
      '    WHERE compte >=compte_lign '
      '    AND compte<=(compte_lign||'#39'Z'#39')'
      '    AND LEFT(bdd,4) = :a'
      '    AND periode = :b '
      '    AND(taxe='#39'TOUT'#39' OR'
      '     (taxe='#39'TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_ntax))OR'
      '     (taxe='#39'N/TAX.'#39' AND compte IN (SELECT numcpt FROM cpt_tax)))'
      '    GROUP BY journal, bdd, num_ligne) as a'
      '    LEFT JOIN ('
      '      SELECT journal || bdd expr2, compte, montant '
      '      FROM eltjrn_conso '
      
        '      WHERE codejrnx<>'#39'AN'#39' AND codejrnx<>'#39'CL'#39') AS b ON expr1=exp' +
        'r2'
      '    LEFT JOIN tva_excel on tva_excel.num_ligne=a.num_ligne'
      '   LEFT JOIN numcpt ON b.compte = numcpt.numcpt'
      '   LEFT JOIN numadres ON numadres.numcpt= numcpt.numcpt'
      
        'WHERE left(b.compte,2)='#39'40'#39' or left(b.compte,2)='#39'41'#39' or left(b.c' +
        'ompte,2)='#39'46'#39' '
      
        '              or left(b.compte,3)='#39'512'#39' or left(b.compte,3)='#39'513' +
        #39
      '    GROUP BY b.compte, libelles,a.num_ligne,intitule, adresse'
      '    ORDER BY num_ligne'
      '    ')
    Left = 744
    Top = 266
    object q_ListeTiers_talonum_ligne: TSmallintField
      FieldName = 'num_ligne'
      ReadOnly = True
    end
    object q_ListeTiers_talolibelles: TWideStringField
      DisplayWidth = 50
      FieldName = 'libelles'
      ReadOnly = True
      Size = 255
    end
    object q_ListeTiers_talocompte: TWideStringField
      DisplayWidth = 15
      FieldName = 'compte'
      ReadOnly = True
    end
    object q_ListeTiers_talointitule: TWideStringField
      DisplayWidth = 30
      FieldName = 'intitule'
      ReadOnly = True
      Size = 100
    end
    object q_ListeTiers_taloadresse: TWideStringField
      DisplayWidth = 50
      FieldName = 'adresse'
      ReadOnly = True
      Size = 127
    end
    object q_ListeTiers_talomontant: TLargeintField
      FieldName = 'montant'
      ReadOnly = True
    end
  end
end
