object FCanevaDCOMM: TFCanevaDCOMM
  Left = 146
  Top = 113
  Width = 1040
  Height = 558
  Caption = 'FCanevaDCOMM'
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
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    TabOrder = 0
    OnChange = PageControl1Change
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1024
    Height = 101
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 457
      Top = 1
      Width = 566
      Height = 99
      Align = alClient
      Color = 14737632
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Compte'
      end
      object SpeedButton1: TSpeedButton
        Left = 160
        Top = 4
        Width = 23
        Height = 22
        Caption = '...'
      end
      object DBText1: TDBText
        Left = 187
        Top = 7
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'Intitule_de'
        DataSource = DaDeclVao.sq_caneva_lst_compte
      end
      object Label2: TLabel
        Left = 50
        Top = 9
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object SpeedButton2: TSpeedButton
        Left = 160
        Top = 28
        Width = 23
        Height = 22
        Caption = '...'
      end
      object Label3: TLabel
        Left = 53
        Top = 30
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object SpeedButton3: TSpeedButton
        Left = 248
        Top = 53
        Width = 91
        Height = 22
        Caption = 'Export Excel'
        OnClick = SpeedButton3Click
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 5
        Width = 86
        Height = 21
        DataField = 'compte_de'
        DataSource = DaDeclVao.sq_caneva_lst_compte
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 29
        Width = 86
        Height = 21
        DataField = 'compte_a'
        DataSource = DaDeclVao.sq_caneva_lst_compte
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 13
        Top = 53
        Width = 220
        Height = 22
        DataSource = DaDeclVao.sq_caneva_lst_compte
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        Flat = True
        TabOrder = 2
      end
      object CheckConso: TCheckBox
        Left = 360
        Top = 56
        Width = 107
        Height = 17
        Caption = 'Voir consolidation'
        TabOrder = 3
        Visible = False
        OnClick = CheckConsoClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 456
      Height = 99
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 474
        Height = 66
        Align = alLeft
        DataSource = DaDeclVao.sq_caneva_lst_compte
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
      end
      object Panel6: TPanel
        Left = 0
        Top = 66
        Width = 456
        Height = 33
        Align = alBottom
        Color = 14737632
        TabOrder = 1
        object SpeedButton5: TSpeedButton
          Left = 426
          Top = 7
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton5Click
        end
        object Label4: TLabel
          Left = 285
          Top = 8
          Width = 18
          Height = 16
          Caption = 'au'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 375
          Top = 8
          Width = 48
          Height = 16
          Caption = 'Label5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 8
          Width = 48
          Height = 16
          Caption = 'Label6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 204
          Top = 8
          Width = 18
          Height = 16
          Caption = 'du'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DateTimePicker2: TDateTimePicker
          Left = 310
          Top = 5
          Width = 58
          Height = 21
          Date = 44859.440906076390000000
          Time = 44859.440906076390000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DateTimePicker1: TDateTimePicker
          Left = 224
          Top = 5
          Width = 58
          Height = 21
          Date = 44859.440906076390000000
          Time = 44859.440906076390000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 478
    Width = 1024
    Height = 41
    Align = alBottom
    Color = 14737632
    TabOrder = 2
    object SpeedButton10: TSpeedButton
      Left = 590
      Top = 4
      Width = 106
      Height = 27
      Caption = 'Fermer'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = SpeedButton10Click
    end
    object SpeedButton9: TSpeedButton
      Left = 154
      Top = 4
      Width = 106
      Height = 27
      Caption = 'Imprimer'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton9Click
    end
    object SpeedButton8: TSpeedButton
      Left = 4
      Top = 4
      Width = 106
      Height = 27
      Caption = 'Excel'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        18000000000030090000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD7E0D1AEC09F839F6A5B813A477123F9FAF8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFF
        FFFFFFFFFFECEFE9C3CFB798B08470915447702233650A33650C3869113C6C17
        406F1B2A5D02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8BC98537A313A681331630A35680E3A
        6B143E6E1942711D447220457320447320447220457321366610BCCAB0C1CFB4
        C0CEB3C0CEB3C0CEB3C0CEB3BFCEB3BFCEB2BECDB3FDFEFDFFFFFFFFFFFFFFFF
        FFFFFFFF7B9B6238691143721F44732045732145722044732045732145732145
        73214573214573214573213B69148CA8758DA8778DA7758CA7758BA7758BA775
        8CA7758DA8777D9B627A9860FFFFFFFFFFFFFFFFFFFFFFFF809E683C6C174573
        214573214573214573214573214573214573214573214573214573214573212E
        6105FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F3ED6A8C4C
        FFFFFFFFFFFFFFFFFFFFFFFF809E683C6C174573214573214573214573204573
        2145732145732144722045732145732145732140701C547D32416F1CEEF0EA7E
        9D634C7729517B2F497425FFFFFFE7EDE36B8E4DFFFFFFFFFFFFFFFFFFFFFFFF
        809E683C6C1745732144722043721F43721F4473204473203F6E1A3D6D184472
        2045732145732044722132630B1C5200E9ECE5658845295C002E6006265900FF
        FFFFE7ECE36B8D4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C6C17447220437120
        426F1B3E6C1843721F3C6B176B8D4F89A5733F6D1A447220457321306208FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6EBE16B8D4EFFFFFFFF
        FFFFFFFFFFFFFFFF809E683C6C1743721F3D6A17FFFFFFE9ECE42D5E044F782C
        FFFFFFD1DBC835670D457321447321416F1B5E843E4C782AEFF1EB85A26D5780
        385C833D547D33FFFFFFE7ECE36B8D4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C
        6C17457321396A1396AE81FFFFFF467121AFC09DFFFFFF50782C41701C457321
        457321447321306207185000E9EDE5628742265B002C5F02235600FFFFFFE7ED
        E36B8E4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C6C1745732143721F37660FFF
        FFFFA8BA96FDFDFCCFD8C630630845732145732145732132630AFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7ECE16B8D4EFFFFFFFFFFFFFFFF
        FFFFFFFF809E683C6C1745732145732138691196AD80FFFFFFFFFFFF577F353F
        6F1B457321457321457321406E1B658B46567E33EFF2EC8BA675608540648944
        5C833CFFFFFFE7ECE36B8D4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C6C174573
        214573203E6E19658847FFFFFFFFFFFF31620943721F45732145732144732146
        72212B5F03144D00E9EDE3608540215800275C001F5400FFFFFFE7EDE36B8D4E
        FFFFFFFFFFFFFFFFFFFFFFFF809E683C6C174573214573202F6207DDE3D6E7EC
        E3FFFFFF96AE7F396A1345732145732145732131630AF9F9F8FFFEFFFFFFFFFF
        FDFEFEFDFFFFFEFFFCFBFCFFFFFFE6EBE26B8D4EFFFFFFFFFFFFFFFFFFFFFFFF
        809E683C6C17457321406F1B567E34FFFFFF849F6BC3D1B7FFFFFF3162094472
        1F4573214573213F6D196D8F4F5E843DF0F3ED91AA7B678B496B8E4E648845FF
        FFFFE7ECE26B8D4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C6C1745732134660E
        CDD8C4FFFFFF3D6B18648948FFFFFF8DA7753C6C174473204573214573212C60
        03164F00E9EDE35F8640235900285D001F5500FFFFFFE7ECE36B8D4EFFFFFFFF
        FFFFFFFFFFFFFFFF809E683C6C174472203D6D1991AA7C8BA57339691336660E
        C5D1B9CCD7C136670F45732145732133630BF0F2EEF5F6F2FFFFFFF8F8F7F5F6
        F2F6F7F4F3F4F1FFFFFFE6EBE26B8D4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C
        6C174573214472203D6C173C6C17457320447220366810376810457321457321
        4573213E6D19749558658947F1F3EE97AE816E91537294576B8D4EFFFFFFE7EC
        E26B8D4EFFFFFFFFFFFFFFFFFFFFFFFF809E683C6C1745732145732144732044
        73204473214473214573214573214573214573214473204573212F6206174F00
        E9EDE4628742255B002B5F01215700FFFFFFE8ECE36B8D4EFFFFFFFFFFFFFFFF
        FFFFFFFF809E683C6C1745732145732145732145732145732145732145732145
        732145732145732145732133640CDCE2D4DDE4D7FFFFFFE8ECE3DFE5D8E0E6DA
        DDE4D6FFFFFFE8EDE56B8D4DFFFFFFFFFFFFFFFFFFFFFFFF7C9C643A6B144472
        2045732145732144722045732145732145732145732145732145732145732132
        6309F0F3EDF9FAF6F2F5EEF5F7F2F6F8F3F6F8F3F6F8F3F4F7F1D9E2D1698B4B
        FFFFFFFFFFFFFFFFFFFFFFFF97AE833D6B1832640A34650C3869113D6D174070
        1C43721F4473204473214472204472204573213E6E195F833E5C813C5B813C5B
        813C5B813C5B813B5A813A5A8038597F39D0D9C7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFBFAD3DCCAAABD99809D67567C3437661131630936680F3A6B
        143E6E1942711E2D5F04FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEAEEE7BECDB395AE816A8D4D44701E2F5E06F8F8
        F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = SpeedButton8Click
    end
    object SpeedButton4: TSpeedButton
      Left = 336
      Top = 8
      Width = 121
      Height = 22
      Caption = 'Voir d'#233'tail'
      OnClick = SpeedButton4Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 142
    Width = 512
    Height = 336
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 3
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 510
      Height = 27
      ActivePage = TabConso
      Align = alTop
      TabOrder = 0
      OnChange = PageControl2Change
      object TabConso: TTabSheet
        Caption = 'Consolid'#233
      end
      object TabTamatave: TTabSheet
        Caption = 'Tamatave'
        ImageIndex = 1
      end
      object TabDiego: TTabSheet
        Caption = 'Diego'
        ImageIndex = 2
      end
    end
    object DBGrid3: TDBGrid
      Left = 1
      Top = 28
      Width = 510
      Height = 307
      Align = alClient
      DataSource = sq_x_dcomm
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid3DrawColumnCell
    end
  end
  object GroupDetail: TGroupBox
    Left = 512
    Top = 142
    Width = 512
    Height = 336
    Align = alRight
    Caption = 'D'#233'tail'
    TabOrder = 4
    Visible = False
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 508
      Height = 319
      Align = alClient
      DataSource = DaDeclVao.sq_x_dcomm_detail
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Memo1: TMemo
    Left = 32
    Top = 248
    Width = 585
    Height = 177
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
    Visible = False
  end
  object sq_x_dcomm: TDataSource
    DataSet = DaDeclVao.q_x_dcomm
    OnDataChange = sq_x_dcommDataChange
    Left = 232
    Top = 205
  end
end
