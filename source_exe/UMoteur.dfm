object Moteur: TMoteur
  OldCreateOrder = False
  Left = 190
  Top = 156
  Height = 266
  Width = 381
  object s_TVADescription: TDataSource
    DataSet = Special.TVADescription
    Left = 48
    Top = 8
  end
  object s_CodyTVA: TDataSource
    DataSet = Special.CodyTVA
    Left = 128
    Top = 8
  end
  object s_TParametr: TDataSource
    DataSet = Special.TParametr
    Left = 168
    Top = 104
  end
  object s_RubriqueTVA: TDataSource
    DataSet = DASQL.RubriqueTVA
    Left = 288
    Top = 8
  end
  object sqParaDecl: TDataSource
    DataSet = DASQL.qParaDecl
    Left = 24
    Top = 88
  end
end
