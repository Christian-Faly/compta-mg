object FControl: TFControl
  Left = 179
  Top = 124
  Width = 311
  Height = 295
  Caption = 'FControl'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 32
    Top = 24
    Width = 217
    Height = 217
    ItemHeight = 13
    TabOrder = 0
  end
  object CreerTable: TADOQuery
    Connection = DObjet.C_ListeDonnee
    Parameters = <>
    SQL.Strings = (
      'Create table ListeTable(Nom char(20))')
    Left = 32
    Top = 56
  end
  object ListeTable: TADOTable
    Connection = DObjet.C_ListeDonnee
    TableName = 'ListeTable'
    Left = 32
    Top = 104
    object ListeTableNom: TWideStringField
      FieldName = 'Nom'
      FixedChar = True
    end
    object ListeTableCleNom: TWideStringField
      FieldName = 'CleNom'
    end
    object ListeTableCleType: TWideStringField
      FieldName = 'CleType'
    end
  end
  object Table: TADOTable
    Connection = DObjet.C_ListeDonnee
    Left = 112
    Top = 32
  end
  object Dictionnaire: TADOTable
    Connection = DObjet.C_ListeDonnee
    TableName = 'Dictionnaire'
    Left = 176
    Top = 72
    object DictionnaireCode: TWideStringField
      FieldName = 'Code'
      FixedChar = True
    end
    object DictionnaireMalagasy: TWideStringField
      FieldName = 'Malagasy'
      FixedChar = True
      Size = 50
    end
    object DictionnaireFrancais: TWideStringField
      FieldName = 'Francais'
      FixedChar = True
      Size = 50
    end
    object DictionnaireAnglais: TWideStringField
      FieldName = 'Anglais'
      FixedChar = True
      Size = 50
    end
  end
end
