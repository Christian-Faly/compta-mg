object Form1: TForm1
  Left = 160
  Top = 117
  Width = 928
  Height = 558
  Caption = 'Form1'
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
    Width = 912
    Height = 145
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 511
      Height = 143
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel2: TPanel
      Left = 512
      Top = 1
      Width = 399
      Height = 143
      Align = alRight
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 397
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Compte'
        end
        object SpeedButton1: TSpeedButton
          Left = 152
          Top = 8
          Width = 23
          Height = 22
          Caption = '...'
        end
        object DBText1: TDBText
          Left = 181
          Top = 10
          Width = 209
          Height = 17
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 5
          Width = 86
          Height = 21
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 42
        Width = 397
        Height = 100
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
end
