object FSaisieDonnee3: TFSaisieDonnee3
  Left = 82
  Top = 18
  Width = 612
  Height = 489
  BorderIcons = []
  Caption = 'FSaisieDonnee3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 604
    Height = 154
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 395
    Width = 604
    Height = 40
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 136
      Top = 8
      Width = 89
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 256
      Top = 8
      Width = 89
      Height = 25
      Cancel = True
      Caption = 'Annuler'
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 16
      Top = 7
      Width = 89
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitBtn4Click
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 63
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 40
      Top = 9
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 40
      Top = 37
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 408
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 408
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object Edit31: TEdit
      Left = 80
      Top = 5
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object Edit34: TEdit
      Left = 125
      Top = 35
      Width = 276
      Height = 21
      Color = 14084329
      TabOrder = 1
      OnClick = Edit34Click
    end
    object Edit33: TEdit
      Left = 126
      Top = 6
      Width = 275
      Height = 21
      Color = 14145478
      TabOrder = 2
      OnClick = Edit33Click
    end
    object Edit32: TEdit
      Left = 81
      Top = 35
      Width = 40
      Height = 21
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 0
    Width = 345
    Height = 170
    Color = 14145478
    DataSource = STEntree1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnMouseUp = DBGrid1MouseUp
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 217
    Width = 604
    Height = 178
    Align = alClient
    TabOrder = 4
  end
  object DBGrid2: TDBGrid
    Left = 163
    Top = 24
    Width = 345
    Height = 153
    Color = 14084329
    DataSource = STEntree2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnMouseUp = DBGrid2MouseUp
  end
  object STEntree1: TDataSource
    DataSet = DObjet.T_Entree1
    Left = 88
    Top = 56
  end
  object STEntree2: TDataSource
    DataSet = DObjet.T_Entree2
    Left = 32
    Top = 80
  end
  object ADOTable1: TADOTable
    CursorType = ctStatic
    TableName = 'BV'
    Left = 104
    Top = 136
    object ADOTable1HeureOuvert: TDateTimeField
      FieldName = 'HeureOuvert'
      EditMask = '!90:00;1;_'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable1
    Left = 128
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 344
    Top = 24
    object Suivant1: TMenuItem
      Caption = 'Suivant'
    end
  end
  object ADOTable2: TADOTable
    Left = 312
    Top = 96
  end
end
