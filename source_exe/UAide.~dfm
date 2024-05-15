object FAide: TFAide
  Left = 226
  Top = 203
  Width = 783
  Height = 540
  Caption = 'Aide'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 0
    Top = 41
    Width = 775
    Height = 399
    Align = alClient
    DataField = 'Contenu'
    DataSource = s_Q_Aide
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 41
    Align = alTop
    TabOrder = 1
    object DBText1: TDBText
      Left = 5
      Top = 2
      Width = 763
      Height = 35
      DataField = 'Description'
      DataSource = s_Q_Aide
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 440
    Width = 775
    Height = 25
    DataSource = s_Q_Aide
    VisibleButtons = [nbEdit, nbPost, nbCancel]
    Align = alBottom
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 465
    Width = 775
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 267
      Top = 8
      Width = 133
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 456
      Top = 7
      Width = 137
      Height = 25
      Caption = '&Poursuivre'
      TabOrder = 1
      Kind = bkRetry
    end
  end
  object s_Q_Aide: TDataSource
    DataSet = Commun.Q_Aide
    Left = 296
    Top = 200
  end
end
