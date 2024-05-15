object DaConnect: TDaConnect
  OldCreateOrder = False
  Left = 633
  Top = 169
  Height = 175
  Width = 365
  object C_Compta: TADOConnection
    Attributes = [xaCommitRetaining]
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=compt' +
      'a_pg;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    OnExecuteComplete = C_ComptaExecuteComplete
    Left = 16
    Top = 7
  end
  object C_Document: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=exerc' +
      'ice;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    OnExecuteComplete = C_DocumentExecuteComplete
    Left = 96
    Top = 8
  end
  object C_Document_1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=exerc' +
      'ice_1;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    OnExecuteComplete = C_Document_1ExecuteComplete
    Left = 192
    Top = 10
  end
  object C_Societe: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=multi' +
      'soc;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 16
    Top = 80
  end
  object C_Temporaire: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=compt' +
      'a_pg;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    OnExecuteComplete = C_TemporaireExecuteComplete
    Left = 96
    Top = 79
  end
  object C_Utilisateur: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=utili' +
      'sat;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 192
    Top = 80
  end
  object Operation_temp: TADOQuery
    Connection = C_Compta
    Parameters = <>
    Left = 280
    Top = 88
  end
end
