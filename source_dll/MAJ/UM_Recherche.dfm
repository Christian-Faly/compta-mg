object MoteurRecherche: TMoteurRecherche
  OldCreateOrder = False
  Left = 63
  Top = 128
  Height = 238
  Width = 607
  object SSpecialitePartenariat: TDataSource
    Left = 146
    Top = 67
  end
  object SQPartenariat: TDataSource
    AutoEdit = False
    OnDataChange = SQPartenariatDataChange
    Left = 24
    Top = 8
  end
  object SInterlocuteur: TDataSource
    Left = 208
    Top = 6
  end
  object SDiplomePartenariat: TDataSource
    Left = 112
    Top = 8
  end
  object SMotscle: TDataSource
    Left = 280
    Top = 5
  end
  object SDiplome: TDataSource
    Left = 336
    Top = 4
  end
  object SActivite: TDataSource
    Left = 392
    Top = 4
  end
  object SPartenariatActivite: TDataSource
    Left = 40
    Top = 64
  end
  object SPrix: TDataSource
    Left = 224
    Top = 64
  end
  object S_Achat: TDataSource
    Left = 280
    Top = 64
  end
  object S_AchatDetail: TDataSource
    Left = 32
    Top = 120
  end
  object SProjet: TDataSource
    Left = 104
    Top = 121
  end
  object SQMission: TDataSource
    Left = 168
    Top = 120
  end
  object SQTaches_Mission: TDataSource
    Left = 240
    Top = 136
  end
  object SProduit: TDataSource
    Left = 328
    Top = 64
  end
  object SCourrier: TDataSource
    Left = 312
    Top = 120
  end
  object SFichieretDoc: TDataSource
    Left = 384
    Top = 72
  end
  object SSexe: TDataSource
    Left = 480
    Top = 48
  end
  object S_QPartenariat: TDataSource
    AutoEdit = False
    Left = 528
    Top = 136
  end
end
