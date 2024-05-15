object Form1: TForm1
  Left = 334
  Top = 125
  Width = 924
  Height = 480
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 908
    Height = 441
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 112
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=exerc' +
      'ice'
    CursorType = ctStatic
    TableName = 'sel1eltjrn'
    Left = 256
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 256
    Top = 112
  end
end
