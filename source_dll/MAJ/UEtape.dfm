object FEtape: TFEtape
  Left = 12
  Top = 88
  Width = 659
  Height = 482
  Caption = 'FEtape'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 651
    Height = 448
    ActivePage = TabSheet11
    Align = alClient
    TabOrder = 0
    object TabSheet11: TTabSheet
      Caption = 'Liste'
      ImageIndex = 10
      object DBGrid11: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 288
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel: TPanel
        Left = 0
        Top = 288
        Width = 643
        Height = 132
        Align = alBottom
        TabOrder = 1
        object DBNavigator11: TDBNavigator
          Left = 8
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Etape 1'
      object Panel1: TPanel
        Left = 0
        Top = 377
        Width = 643
        Height = 43
        Align = alBottom
        TabOrder = 0
        object DBNavigator1: TDBNavigator
          Left = 392
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 377
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Etape 2'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 377
        Width = 643
        Height = 43
        Align = alBottom
        TabOrder = 0
        object DBNavigator2: TDBNavigator
          Left = 248
          Top = 16
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 377
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Etape 3'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 369
        Width = 643
        Height = 51
        Align = alBottom
        TabOrder = 0
        object DBNavigator3: TDBNavigator
          Left = 208
          Top = 16
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 369
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Etape 4'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 377
        Width = 643
        Height = 43
        Align = alBottom
        TabOrder = 0
        object DBNavigator4: TDBNavigator
          Left = 216
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 377
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Etape 5'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 385
        Width = 643
        Height = 35
        Align = alBottom
        TabOrder = 0
        object DBNavigator5: TDBNavigator
          Left = 392
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 385
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Etape 6'
      ImageIndex = 5
      object Panel7: TPanel
        Left = 0
        Top = 377
        Width = 643
        Height = 43
        Align = alBottom
        TabOrder = 0
        object DBNavigator6: TDBNavigator
          Left = 216
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 377
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Etape 7'
      ImageIndex = 6
      object Panel8: TPanel
        Left = 0
        Top = 385
        Width = 643
        Height = 35
        Align = alBottom
        TabOrder = 0
        object DBNavigator7: TDBNavigator
          Left = 208
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 385
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Etape 8'
      ImageIndex = 7
      object Panel9: TPanel
        Left = 0
        Top = 385
        Width = 643
        Height = 35
        Align = alBottom
        TabOrder = 0
        object DBNavigator8: TDBNavigator
          Left = 216
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid8: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 385
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Etape 9'
      ImageIndex = 8
      object Panel10: TPanel
        Left = 0
        Top = 385
        Width = 643
        Height = 35
        Align = alBottom
        TabOrder = 0
        object DBNavigator9: TDBNavigator
          Left = 208
          Top = 8
          Width = 240
          Height = 25
          TabOrder = 0
        end
      end
      object DBGrid9: TDBGrid
        Left = 0
        Top = 0
        Width = 643
        Height = 385
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 184
  end
end
