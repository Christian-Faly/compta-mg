object FLogUtil: TFLogUtil
  Left = 162
  Top = 116
  Width = 854
  Height = 565
  Align = alBottom
  Caption = 'FLogUtil'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 527
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 836
      Height = 128
      Align = alTop
      Caption = 'Selection'
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 96
        Top = 96
        Width = 153
        Height = 22
        Caption = 'Executer'
        OnClick = SpeedButton1Click
      end
      object CheckBox1: TCheckBox
        Left = 16
        Top = 42
        Width = 57
        Height = 17
        Caption = 'Date'
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object MaskEdit1: TMaskEdit
        Left = 98
        Top = 36
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 95
        Top = 9
        Width = 225
        Height = 21
        KeyField = 'Code'
        ListField = 'Code'
        ListSource = DObjet.SourceUtilisat
        TabOrder = 2
        Visible = False
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Utilisateur'
        TabOrder = 3
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 17
        Top = 65
        Width = 73
        Height = 17
        Caption = 'Commande'
        TabOrder = 4
        OnClick = CheckBox3Click
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 97
        Top = 63
        Width = 225
        Height = 21
        KeyField = 'Code'
        ListField = 'Code'
        ListSource = DObjet.SourceUtilisat
        TabOrder = 5
        Visible = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 338
        Top = 62
        Width = 225
        Height = 21
        KeyField = 'Code'
        ListField = 'Code'
        ListSource = DObjet.SourceUtilisat
        TabOrder = 6
        Visible = False
      end
    end
    object DBGrid2: TDBGrid
      Left = 321
      Top = 129
      Width = 516
      Height = 397
      Align = alClient
      DataSource = DObjet.stTache
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 129
      Width = 320
      Height = 397
      Align = alLeft
      Caption = 'Par date'
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 316
        Height = 380
        Align = alClient
        DataSource = DObjet.sqLog
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
