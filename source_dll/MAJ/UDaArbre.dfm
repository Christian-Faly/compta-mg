object DaArbre: TDaArbre
  OldCreateOrder = False
  Left = 189
  Top = 195
  Height = 242
  Width = 612
  object C_Arbre: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=O_DCO' +
      'C'
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object Q_Recherche: TADOQuery
    Connection = C_Arbre
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'select * from Arbre'
      'where Auto=:a ')
    Left = 88
    Top = 8
    object Q_RechercheNumero: TWideStringField
      FieldName = 'Numero'
      Size = 10
    end
    object Q_RechercheDescription: TWideStringField
      FieldName = 'Description'
      Size = 255
    end
    object Q_RecherchePere: TWideStringField
      FieldName = 'Pere'
      Size = 10
    end
  end
  object qArbre: TADOQuery
    Connection = C_Arbre
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ArbreCellule')
    Left = 160
    Top = 8
  end
  object qMAJArbre: TADOQuery
    Connection = C_Arbre
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'select * from Arbre'
      'where Pere=:a')
    Left = 232
    Top = 8
    object qMAJArbreDescription: TWideStringField
      FieldName = 'Description'
      Size = 255
    end
    object qMAJArbrePere: TWideStringField
      FieldName = 'Pere'
      Visible = False
      Size = 10
    end
    object qMAJArbreNumero: TWideStringField
      FieldName = 'Numero'
    end
  end
  object sqMAJArbre: TDataSource
    DataSet = qMAJArbre
    Left = 312
    Top = 8
  end
  object qNiveauArbre: TADOQuery
    Connection = C_Arbre
    Parameters = <
      item
        Name = 'a'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'b'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from NiveauArbre'
      'where (Numero=:a)or(Numero=:b)'
      'order by Numero')
    Left = 24
    Top = 64
    object qNiveauArbreDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object sqNiveauArbre: TDataSource
    DataSet = qNiveauArbre
    Left = 96
    Top = 64
  end
end
