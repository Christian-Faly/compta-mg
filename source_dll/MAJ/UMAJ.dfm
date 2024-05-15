object FMAJ: TFMAJ
  Left = 57
  Top = 110
  BorderStyle = bsNone
  Caption = 'FMAJ'
  ClientHeight = 419
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 753
    Height = 419
    Align = alClient
    Caption = 'Liste'
    Color = 8454143
    ParentColor = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 45
      Width = 749
      Height = 318
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDblClick = DBGrid1DblClick
      OnKeyUp = DBGrid1KeyUp
    end
    object Panel1: TPanel
      Left = 2
      Top = 389
      Width = 749
      Height = 28
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Nombre :'
      end
      object Label2: TLabel
        Left = 56
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 638
        Top = 3
        Width = 75
        Height = 22
        TabOrder = 0
        Kind = bkOK
      end
      object DBEdit1: TDBEdit
        Left = 304
        Top = 2
        Width = 305
        Height = 21
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 749
      Height = 30
      Align = alTop
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 22
        Height = 13
        Caption = 'Filtre'
      end
      object ComboBox1: TComboBox
        Left = 44
        Top = 6
        Width = 192
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 248
        Top = 4
        Width = 241
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
        OnChange = Edit1Change
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 363
      Width = 749
      Height = 26
      Align = alBottom
      TabOrder = 3
      object SpeedButton2: TSpeedButton
        Left = 580
        Top = 1
        Width = 149
        Height = 22
        Caption = 'Ajout MER'
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
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 576
        Height = 24
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
        Align = alLeft
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    Left = 352
    Top = 104
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 416
    Top = 120
  end
end
