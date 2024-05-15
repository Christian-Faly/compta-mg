object FEcriture: TFEcriture
  Left = 317
  Top = 64
  Width = 870
  Height = 607
  Caption = 'FEcriture'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 9
    Align = alTop
    Color = 8891260
    TabOrder = 0
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 9
    Width = 854
    Height = 29
    ActivePage = Ecriture
    Align = alTop
    TabOrder = 1
    OnChange = PageControl2Change
    object Journaux: TTabSheet
      Caption = 'Journal'
    end
    object Ecriture: TTabSheet
      Caption = 'Ecriture'
      ParentShowHint = False
      ShowHint = False
    end
    object GAbonn: TTabSheet
      Caption = 'Guide abon.'
    end
    object Arrete: TTabSheet
      Caption = 'Arr'#234't p'#233'riode'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 38
    Width = 854
    Height = 38
    Align = alTop
    Caption = 'Choix Journal'
    Color = 14737632
    ParentColor = False
    TabOrder = 2
    object SpeedButton7: TSpeedButton
      Left = 109
      Top = 14
      Width = 27
      Height = 22
      Caption = '...'
      OnClick = SpeedButton7Click
    end
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 25
      Height = 13
      Caption = 'Code'
    end
    object SpeedButton12: TSpeedButton
      Left = 284
      Top = 13
      Width = 69
      Height = 22
      Caption = 'Appliquer'
      OnClick = SpeedButton12Click
    end
    object Edit12: TEdit
      Left = 37
      Top = 14
      Width = 72
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit12'
      OnChange = Edit12Change
    end
    object Edit13: TEdit
      Left = 139
      Top = 14
      Width = 142
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit13'
    end
    object CheckBox1: TCheckBox
      Left = 356
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Appliquer Auto'
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 76
    Width = 854
    Height = 42
    Align = alTop
    Caption = '&P'#233'riode :'
    Color = 14737632
    ParentColor = False
    TabOrder = 3
    TabStop = True
    object Label3: TLabel
      Left = 128
      Top = 18
      Width = 22
      Height = 13
      Caption = '&Mois'
    end
    object Label4: TLabel
      Left = 11
      Top = 17
      Width = 31
      Height = 13
      Caption = '&Ann'#233'e'
    end
    object Label2: TLabel
      Left = 392
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Mois'
    end
    object Label5: TLabel
      Left = 274
      Top = 17
      Width = 31
      Height = 13
      Caption = 'Ann'#233'e'
    end
    object Label6: TLabel
      Left = 271
      Top = 0
      Width = 6
      Height = 13
      Caption = #224
    end
    object ComboBox2: TComboBox
      Left = 155
      Top = 15
      Width = 108
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Janvier'
      OnChange = ComboBox2Change
      Items.Strings = (
        'Janvier'
        'F'#233'vrier'
        'Mars'
        'Avril'
        'Mai'
        'Juin'
        'Juillet'
        'Ao'#251't'
        'Septembre'
        'Octobre'
        'Novembre'
        'D'#233'cembre')
    end
    object Edit4: TEdit
      Left = 47
      Top = 16
      Width = 64
      Height = 21
      TabOrder = 1
      Text = '1999'
      OnChange = Edit4Change
    end
    object UpDown1: TUpDown
      Left = 111
      Top = 16
      Width = 16
      Height = 21
      Associate = Edit4
      Min = 1999
      Max = 2099
      Position = 1999
      TabOrder = 2
      Thousands = False
    end
    object ComboBox1: TComboBox
      Left = 418
      Top = 12
      Width = 108
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'ComboBox1'
      Items.Strings = (
        'Janvier'
        'F'#233'vrier'
        'Mars'
        'Avril'
        'Mai'
        'Juin'
        'Juillet'
        'Ao'#251't'
        'Septembre'
        'Octobre'
        'Novembre'
        'D'#233'cembre')
    end
    object Edit1: TEdit
      Left = 309
      Top = 13
      Width = 64
      Height = 21
      TabOrder = 4
      Text = 'Edit1'
    end
    object UpDown2: TUpDown
      Left = 371
      Top = 11
      Width = 16
      Height = 23
      TabOrder = 5
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 118
    Width = 854
    Height = 51
    Align = alTop
    Caption = 'Num'#233'ro de compte'
    Color = 14737632
    ParentColor = False
    TabOrder = 4
    object SpeedButton5: TSpeedButton
      Left = 113
      Top = 15
      Width = 24
      Height = 25
      Caption = '...'
      OnClick = SpeedButton5Click
    end
    object SpeedButton9: TSpeedButton
      Left = 245
      Top = 13
      Width = 24
      Height = 25
      Caption = '...'
      OnClick = SpeedButton9Click
    end
    object Label9: TLabel
      Left = 140
      Top = 17
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label8: TLabel
      Left = 5
      Top = 18
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Edit3: TEdit
      Left = 23
      Top = 15
      Width = 90
      Height = 21
      TabOrder = 0
      Text = 'Edit3'
    end
    object Edit6: TEdit
      Left = 153
      Top = 14
      Width = 92
      Height = 21
      TabOrder = 1
      Text = 'Edit6'
    end
  end
  object Panel3: TPanel
    Left = 750
    Top = 169
    Width = 104
    Height = 254
    Align = alRight
    Color = 8891260
    TabOrder = 5
    object SpeedButton1: TSpeedButton
      Left = 6
      Top = 6
      Width = 93
      Height = 27
      Caption = 'Ajouter'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton10: TSpeedButton
      Left = 6
      Top = 42
      Width = 93
      Height = 27
      Caption = 'Modifier'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton10Click
    end
    object SpeedButton2: TSpeedButton
      Left = 6
      Top = 77
      Width = 93
      Height = 27
      Caption = 'Suprimer'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton4: TSpeedButton
      Left = 4
      Top = 115
      Width = 93
      Height = 27
      Caption = 'Cl'#244'ture'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton4Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 423
    Width = 854
    Height = 145
    Align = alBottom
    Caption = 'Recherche'
    Color = 14737632
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object SpeedButton11: TSpeedButton
      Left = 230
      Top = 88
      Width = 126
      Height = 35
      Caption = 'Rechercher maintenant'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton11Click
    end
    object Label7: TLabel
      Left = 88
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object SpeedButton8: TSpeedButton
      Left = 376
      Top = 88
      Width = 126
      Height = 35
      Caption = 'Verification'
      OnClick = SpeedButton8Click
    end
    object SpeedButton3: TSpeedButton
      Left = 523
      Top = 88
      Width = 126
      Height = 35
      Caption = 'Fermer'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object RadioGroup2: TRadioGroup
      Left = 232
      Top = 19
      Width = 689
      Height = 62
      Caption = 'par rapport'
      Color = 14737632
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pi'#232'ce'
        'Facture'
        'Compte'
        'Dt Fact.')
      ParentColor = False
      TabOrder = 2
    end
    object Edit16: TEdit
      Left = 92
      Top = 21
      Width = 100
      Height = 21
      TabOrder = 0
      Text = 'Edit16'
      OnChange = Edit16Change
    end
    object Edit17: TEdit
      Left = 93
      Top = 46
      Width = 100
      Height = 21
      TabOrder = 1
      Text = 'Edit17'
      OnChange = Edit17Change
    end
    object Edit2: TEdit
      Left = 444
      Top = 25
      Width = 122
      Height = 21
      TabOrder = 3
      Text = 'Edit2'
      OnChange = Edit2Change
    end
    object Edit7: TEdit
      Left = 444
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'Edit7'
      OnChange = Edit7Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 169
    Width = 750
    Height = 254
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object DBGrid2: TDBGrid
    Left = 121
    Top = 241
    Width = 597
    Height = 71
    Color = 15532031
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 44
    Top = 261
    Width = 589
    Height = 88
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource4: TDataSource
    DataSet = DASQL.BalConCo
    Left = 101
    Top = 164
  end
  object DataSource5: TDataSource
    DataSet = DASQL.Resume
    Left = 264
    Top = 72
  end
  object DataSource1: TDataSource
    Left = 117
    Top = 202
  end
  object DataSource3: TDataSource
    DataSet = Special.NonBalance
    Left = 224
    Top = 224
  end
  object DataSource2: TDataSource
    Left = 136
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 368
    Top = 158
  end
end
