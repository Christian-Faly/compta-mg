object FEtatFinan: TFEtatFinan
  Left = 74
  Top = 53
  Width = 669
  Height = 498
  Caption = 'FEtatFinan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 460
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 351
      Height = 24
      Align = alTop
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = 'Etats financiers % consolid'#233'e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 24
      Top = 334
      Width = 289
      Height = 22
      Caption = 'Lancer Etats'
      OnClick = SpeedButton7Click
    end
    object Label2: TLabel
      Left = 8
      Top = 307
      Width = 86
      Height = 13
      Caption = 'Sockage r'#233'sultat :'
    end
    object SpeedButton2: TSpeedButton
      Left = 178
      Top = 304
      Width = 26
      Height = 22
      Caption = '...'
    end
    object Label5: TLabel
      Left = 256
      Top = 278
      Width = 25
      Height = 13
      Caption = 'Page'
    end
    object SpeedButton4: TSpeedButton
      Left = 8
      Top = 396
      Width = 127
      Height = 22
      Caption = 'Comptes non param'#233'tr'#233's'
      OnClick = SpeedButton4Click
    end
    object SpeedButton8: TSpeedButton
      Left = 40
      Top = 360
      Width = 81
      Height = 22
      OnClick = SpeedButton8Click
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 272
      Width = 49
      Height = 17
      Caption = 'D'#233'tail'
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 68
      Width = 351
      Height = 88
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 1
      object choix: TRadioGroup
        Left = 1
        Top = 1
        Width = 349
        Height = 40
        Align = alTop
        Caption = 'Sosi'#233'te'
        Columns = 2
        DragMode = dmAutomatic
        Items.Strings = (
          'Consolid'#233
          'Agence')
        TabOrder = 0
        OnClick = choixClick
      end
      object RadioGroup1: TRadioGroup
        Left = 1
        Top = 41
        Width = 349
        Height = 46
        Align = alClient
        Caption = 
          'Bilan -----------------------------------------------------  R'#233's' +
          'ultat'
        Columns = 4
        Items.Strings = (
          'Actif'
          'Passif'
          'Charge'
          'Produit')
        TabOrder = 1
        OnClick = RadioGroup1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 156
      Width = 351
      Height = 109
      Align = alTop
      Caption = 'Etat financier'
      TabOrder = 2
      object Label4: TLabel
        Left = 8
        Top = 20
        Width = 81
        Height = 13
        Caption = 'Valeur pr'#233'c'#233'dent'
      end
      object SpeedButton1: TSpeedButton
        Left = 251
        Top = 35
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 59
        Height = 13
        Caption = 'Destination :'
      end
      object SpeedButton6: TSpeedButton
        Left = 284
        Top = 75
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton6Click
      end
      object SpeedButton3: TSpeedButton
        Left = 176
        Top = 12
        Width = 121
        Height = 22
        Caption = 'Stock initial'
        Visible = False
        OnClick = SpeedButton3Click
      end
      object Edit3: TEdit
        Left = 7
        Top = 36
        Width = 242
        Height = 21
        TabOrder = 0
        Text = 'Edit3'
      end
      object Edit2: TEdit
        Left = 8
        Top = 76
        Width = 277
        Height = 21
        TabOrder = 1
        Text = 'Edit2'
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 25
      Width = 351
      Height = 43
      Align = alTop
      Caption = 'Origine fichier consolid'#233':'
      TabOrder = 3
      object SpeedButton5: TSpeedButton
        Left = 282
        Top = 14
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton5Click
      end
      object Edit1: TEdit
        Left = 6
        Top = 15
        Width = 275
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 80
      Top = 264
      Width = 169
      Height = 37
      Caption = 'Mode de calcul r'#233'sultat'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '6-7'
        'Passif - Actif')
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 99
      Top = 305
      Width = 78
      Height = 21
      TabOrder = 5
      Text = '12010000'
    end
    object CheckBox2: TCheckBox
      Left = 206
      Top = 304
      Width = 120
      Height = 17
      Caption = 'Recalculer le r'#233'sultat'
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 288
      Top = 275
      Width = 33
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object ListBox1: TListBox
      Left = 145
      Top = 360
      Width = 169
      Height = 105
      ItemHeight = 13
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 353
    Top = 0
    Width = 300
    Height = 460
    Align = alClient
    DataSource = SourceConsolide
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object SourceConsolide: TDataSource
    OnDataChange = SourceConsolideDataChange
    Left = 128
    Top = 125
  end
  object SaveDialog1: TSaveDialog
    Left = 216
    Top = 144
  end
  object OpenDialog1: TOpenDialog
    Left = 136
    Top = 176
  end
  object Table1: TTable
    DatabaseName = 'c:\CSC\Log\Exec\Compta\Data'
    TableName = 'BilanAct.DBF'
    Left = 417
    Top = 100
  end
  object Table2: TTable
    Left = 481
    Top = 52
  end
  object BatchMove1: TBatchMove
    Destination = Table2
    Source = Table1
    Left = 121
    Top = 220
  end
  object Verification: TTable
    DatabaseName = 'c:\CSC\Log\Exec\Compta\Data'
    TableName = 'CONSOLID.DBF'
    Left = 528
    Top = 80
    object VerificationCOMPTE: TStringField
      FieldName = 'COMPTE'
    end
  end
  object ZeroSiVide: TQuery
    DatabaseName = 'c:\CSC\Log\Exec\Compta\Data'
    SQL.Strings = (
      'select * from GroupCpt.db'
      'where ZeroSiVide=TRUE')
    Left = 440
    Top = 216
    object ZeroSiVideDebutCpt: TStringField
      FieldName = 'DebutCpt'
    end
  end
  object CompleterZero: TQuery
    RequestLive = True
    SQL.Strings = (
      'select * from '#39'c:\Ylaf\Data\Cmpta\consolid.dbf'#39
      'where compte=:a')
    Left = 480
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'a'
        ParamType = ptUnknown
      end>
    object CompleterZeroCOMPTE: TStringField
      FieldName = 'COMPTE'
    end
    object CompleterZeroDEBIT1: TFloatField
      FieldName = 'DEBIT1'
    end
  end
end
