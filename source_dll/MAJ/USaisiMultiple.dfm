object FSaisiePrestation: TFSaisiePrestation
  Left = 58
  Top = 44
  Width = 919
  Height = 652
  Caption = 'Saisie PSE (Prestataire)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 68
    Width = 911
    Height = 550
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Info g'#233'n'#233
      object Label2: TLabel
        Left = 320
        Top = 32
        Width = 105
        Height = 26
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Label2'
        WordWrap = True
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 497
        Width = 903
        Height = 25
        DataSource = DataSource1
        Align = alBottom
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Experience PROSPERER'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 903
        Height = 70
        Align = alTop
        Color = 7916404
        TabOrder = 0
        object Shape11: TShape
          Left = -2
          Top = 3
          Width = 904
          Height = 1
        end
        object Shape12: TShape
          Left = 0
          Top = 24
          Width = 903
          Height = 1
        end
        object Shape14: TShape
          Left = 0
          Top = 4
          Width = 1
          Height = 86
        end
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 70
        Width = 903
        Height = 18
        DataSource = DataSource2
        Align = alTop
        TabOrder = 1
        BeforeAction = DBNavigator2BeforeAction
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 88
        Width = 903
        Height = 434
        Align = alClient
        Color = 15267816
        DataSource = DataSource2
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 903
        Height = 70
        Align = alTop
        Color = 7916404
        TabOrder = 0
        object Shape1: TShape
          Left = -2
          Top = 3
          Width = 904
          Height = 1
        end
        object Shape2: TShape
          Left = 0
          Top = 24
          Width = 903
          Height = 1
        end
        object Shape3: TShape
          Left = 0
          Top = 4
          Width = 1
          Height = 86
        end
      end
      object DBNavigator3: TDBNavigator
        Left = 0
        Top = 70
        Width = 903
        Height = 18
        DataSource = DataSource3
        Align = alTop
        TabOrder = 1
        BeforeAction = DBNavigator3BeforeAction
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 88
        Width = 903
        Height = 434
        Align = alClient
        Color = 15267816
        DataSource = DataSource3
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 68
    Align = alTop
    Color = 10813439
    TabOrder = 1
    object Shape21: TShape
      Left = 0
      Top = 202
      Width = 1
      Height = 48
    end
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 268
    Top = 220
  end
  object DataSource2: TDataSource
    DataSet = DObjet.Detail1
    Left = 364
    Top = 220
  end
  object ADOTable1: TADOTable
    Left = 180
    Top = 324
  end
  object DataSource3: TDataSource
    DataSet = DObjet.Detail2
    Left = 436
    Top = 220
  end
end
