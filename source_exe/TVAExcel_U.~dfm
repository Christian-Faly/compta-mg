object FTVAExcel: TFTVAExcel
  Left = 186
  Top = 59
  Width = 1320
  Height = 576
  Caption = 'FTVAExcel'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 854
    Top = 0
    Width = 450
    Height = 537
    Align = alRight
    Caption = 'GroupBox1'
    TabOrder = 0
    Visible = False
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 446
      Height = 85
      Align = alTop
      Color = 12451289
      TabOrder = 0
      object Label1: TLabel
        Left = 83
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Compte'
      end
      object SpeedButton1: TSpeedButton
        Left = 212
        Top = 4
        Width = 23
        Height = 22
        Caption = '...'
      end
      object DBText1: TDBText
        Left = 7
        Top = 32
        Width = 225
        Height = 17
        DataField = 'description'
        DataSource = DaDeclVao.s_tva_compte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton3: TSpeedButton
        Left = 208
        Top = 54
        Width = 91
        Height = 22
        Caption = 'Export Excel'
        OnClick = SpeedButton3Click
      end
      object SpeedButton2: TSpeedButton
        Left = 312
        Top = 54
        Width = 23
        Height = 22
        Caption = 'R'
        OnClick = SpeedButton2Click
      end
      object Label2: TLabel
        Left = 4
        Top = 8
        Width = 26
        Height = 13
        Caption = 'Rang'
      end
      object SpeedButton7: TSpeedButton
        Left = 344
        Top = 54
        Width = 101
        Height = 22
        Caption = 'Cacher d'#233'tail'
        OnClick = SpeedButton7Click
      end
      object SpeedButton12: TSpeedButton
        Left = 489
        Top = 52
        Width = 57
        Height = 22
        Caption = 'Voir SQL'
        Visible = False
        OnClick = SpeedButton12Click
      end
      object DBEdit1: TDBEdit
        Left = 124
        Top = 5
        Width = 86
        Height = 21
        DataField = 'compte_lign'
        DataSource = DaDeclVao.s_tva_compte
        TabOrder = 0
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 54
        Width = 192
        Height = 25
        DataSource = DaDeclVao.s_tva_compte
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        Flat = True
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 240
        Top = -2
        Width = 354
        Height = 38
        Caption = 'Signe'
        Columns = 4
        DataField = 'signe'
        DataSource = DaDeclVao.s_tva_compte
        Items.Strings = (
          'Plus'
          'Moins'
          'Multiplication'
          'Division')
        TabOrder = 2
        Values.Strings = (
          '+'
          '-'
          '*'
          '/')
      end
      object DBEdit5: TDBEdit
        Left = 36
        Top = 5
        Width = 43
        Height = 21
        DataField = 'rang'
        DataSource = DaDeclVao.s_tva_compte
        TabOrder = 3
      end
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 178
      Width = 446
      Height = 167
      Align = alTop
      DataSource = DaDeclVao.s_tva_compte
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 345
      Width = 446
      Height = 190
      Align = alClient
      Caption = 'D'#233'tail '#233'criture par compte'
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 48
        Width = 442
        Height = 97
        Align = alClient
        DataSource = DaDeclVao.sq_tva_detail_compte
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
      end
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 442
        Height = 33
        ActivePage = TabTamatave
        Align = alTop
        TabOrder = 1
        OnChange = PageControl1Change
        object TabTamatave: TTabSheet
          Caption = 'Tamatave'
        end
        object TabDiego: TTabSheet
          Caption = 'Diego'
          ImageIndex = 1
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 145
        Width = 442
        Height = 43
        Align = alBottom
        Color = 12451289
        TabOrder = 2
        object SpeedButton5: TSpeedButton
          Left = 4
          Top = 5
          Width = 126
          Height = 35
          Caption = 'Sortie Excel'
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
          OnClick = SpeedButton5Click
        end
        object CheckEcriture: TCheckBox
          Left = 151
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Ecriture'
          TabOrder = 0
          OnClick = CheckEcritureClick
        end
      end
    end
    object GroupBoxCondition: TGroupBox
      Left = 2
      Top = 100
      Width = 446
      Height = 78
      Align = alTop
      Caption = 'Condition'
      TabOrder = 3
      Visible = False
      object DBGrid4: TDBGrid
        Left = 2
        Top = 15
        Width = 442
        Height = 61
        Align = alClient
        DataSource = DaDeclVao.s_tva_condition
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object Memo2: TMemo
      Left = 216
      Top = 344
      Width = 481
      Height = 137
      Lines.Strings = (
        'Memo2')
      TabOrder = 4
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 537
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 852
      Height = 73
      Align = alTop
      Caption = 'Mise '#224' jour'
      Color = 12451289
      ParentColor = False
      TabOrder = 0
      object Label5: TLabel
        Left = 8
        Top = 19
        Width = 38
        Height = 13
        Caption = 'N'#176'Ligne'
      end
      object Label6: TLabel
        Left = 13
        Top = 43
        Width = 30
        Height = 13
        Caption = 'Libell'#233
      end
      object Label7: TLabel
        Left = 131
        Top = 18
        Width = 24
        Height = 13
        Caption = 'Typa'
      end
      object Label4: TLabel
        Left = 267
        Top = 18
        Width = 86
        Height = 13
        Caption = 'Niveau de calcule'
      end
      object DBEdit2: TDBEdit
        Left = 53
        Top = 17
        Width = 71
        Height = 21
        DataField = 'ligne'
        DataSource = sq_TVAexcel_NumLigne
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 53
        Top = 40
        Width = 329
        Height = 21
        DataField = 'libelles'
        DataSource = sq_TVAexcel_NumLigne
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 165
        Top = 17
        Width = 85
        Height = 21
        DataField = 'typa'
        DataSource = sq_TVAexcel_NumLigne
        TabOrder = 2
      end
      object DBNavigator2: TDBNavigator
        Left = 384
        Top = 41
        Width = 59
        Height = 20
        DataSource = sq_TVAexcel_NumLigne
        VisibleButtons = [nbPost]
        Flat = True
        TabOrder = 3
      end
      object UpDown3: TUpDown
        Left = 405
        Top = 14
        Width = 16
        Height = 21
        Associate = Edit1
        Min = 1
        Max = 10
        Position = 1
        TabOrder = 4
        Thousands = False
      end
      object Edit1: TEdit
        Left = 358
        Top = 14
        Width = 47
        Height = 21
        TabOrder = 5
        Text = '1'
        OnChange = Edit1Change
      end
      object DBEdit6: TDBEdit
        Left = 445
        Top = 17
        Width = 71
        Height = 21
        DataField = 'niveau_calc'
        DataSource = sq_TVAexcel_NumLigne
        TabOrder = 6
      end
      object CheckConsolide: TCheckBox
        Left = 448
        Top = 40
        Width = 81
        Height = 17
        Caption = 'Consolid'#233
        TabOrder = 7
        OnClick = CheckConsolideClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 74
      Width = 852
      Height = 54
      Align = alTop
      Caption = 'P'#233'riode'
      Color = 12451289
      ParentColor = False
      TabOrder = 1
      object SpeedButton4: TSpeedButton
        Left = 392
        Top = 14
        Width = 54
        Height = 22
        Caption = 'Calculer'
        OnClick = SpeedButton4Click
      end
      object LabelPeriode: TLabel
        Left = 347
        Top = 20
        Width = 36
        Height = 13
        Caption = 'P'#233'riode'
      end
      object SpeedButton6: TSpeedButton
        Left = 452
        Top = 14
        Width = 78
        Height = 22
        Caption = 'Voir D'#233'tail'
        OnClick = SpeedButton6Click
      end
      object Label8: TLabel
        Left = 184
        Top = 20
        Width = 34
        Height = 13
        Caption = 'Janvier'
      end
      object Label9: TLabel
        Left = 11
        Top = 20
        Width = 23
        Height = 13
        Caption = 'Date'
      end
      object SpeedButton11: TSpeedButton
        Left = 544
        Top = 16
        Width = 57
        Height = 22
        Caption = 'Voir SQL'
        Visible = False
        OnClick = SpeedButton11Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 42
        Top = 16
        Width = 84
        Height = 21
        Date = 44811.471234988430000000
        Time = 44811.471234988430000000
        TabOrder = 0
        OnChange = DateTimePicker1Change
      end
      object Edit3: TEdit
        Left = 263
        Top = 16
        Width = 56
        Height = 21
        TabOrder = 1
        Text = '2005'
        OnChange = Edit3Change
      end
      object UpDown1: TUpDown
        Left = 319
        Top = 16
        Width = 17
        Height = 21
        Associate = Edit3
        Min = 2005
        Max = 2050
        Position = 2005
        TabOrder = 2
        Thousands = False
      end
      object Edit4: TEdit
        Left = 135
        Top = 16
        Width = 30
        Height = 21
        TabOrder = 3
        Text = '1'
        OnChange = Edit4Change
      end
      object UpDown2: TUpDown
        Left = 165
        Top = 16
        Width = 17
        Height = 21
        Associate = Edit4
        Min = 1
        Max = 12
        Position = 1
        TabOrder = 4
        Thousands = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 489
      Width = 852
      Height = 47
      Align = alBottom
      Color = 12451289
      TabOrder = 2
      object SpeedButton8: TSpeedButton
        Left = 4
        Top = 5
        Width = 126
        Height = 35
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
      object SpeedButton9: TSpeedButton
        Left = 382
        Top = 4
        Width = 126
        Height = 35
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
      object SpeedButton10: TSpeedButton
        Left = 561
        Top = 4
        Width = 126
        Height = 35
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
      object GroupBox5: TGroupBox
        Left = 469
        Top = 1
        Width = 382
        Height = 45
        Align = alRight
        Caption = 'Saisie direct montant'
        TabOrder = 0
        Visible = False
        object Label3: TLabel
          Left = 8
          Top = 21
          Width = 19
          Height = 13
          Caption = 'Tve'
        end
        object Label10: TLabel
          Left = 128
          Top = 21
          Width = 10
          Height = 13
          Caption = 'Di'
        end
        object Label11: TLabel
          Left = 232
          Top = 21
          Width = 16
          Height = 13
          Caption = 'Tot'
        end
        object DBEdit7: TDBEdit
          Left = 33
          Top = 16
          Width = 88
          Height = 21
          DataField = 'tamatave'
          DataSource = DaDeclVao.sq_tva_montant
          TabOrder = 0
        end
        object DBNavigator3: TDBNavigator
          Left = 350
          Top = 16
          Width = 28
          Height = 25
          DataSource = DaDeclVao.sq_tva_montant
          VisibleButtons = [nbPost]
          Flat = True
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 143
          Top = 16
          Width = 88
          Height = 21
          DataField = 'diego'
          DataSource = DaDeclVao.sq_tva_montant
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 255
          Top = 16
          Width = 88
          Height = 21
          DataField = 'montant'
          DataSource = DaDeclVao.sq_tva_montant
          TabOrder = 3
        end
      end
      object CheckDetail: TCheckBox
        Left = 134
        Top = 15
        Width = 48
        Height = 17
        Caption = 'D'#233'tail'
        TabOrder = 1
        Visible = False
        OnClick = CheckDetailClick
      end
      object RadioTypeAnnexe: TRadioGroup
        Left = 191
        Top = 1
        Width = 185
        Height = 39
        Caption = 'Type'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Tous'
          'D'#233'ductible'
          'Collect'#233)
        TabOrder = 2
        Visible = False
        OnClick = RadioTypeAnnexeClick
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 128
      Width = 852
      Height = 361
      ActivePage = TabTVA
      Align = alClient
      TabOrder = 3
      OnChange = PageControl2Change
      object TabTVA: TTabSheet
        Caption = 'TVA'
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 333
          Align = alClient
          DataSource = DaDeclVao.s_tva_excel
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
        end
      end
      object TabTiers210: TTabSheet
        Caption = 'Tiers Tamatave'
        ImageIndex = 1
        object DBGrid5: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 333
          Align = alClient
          DataSource = DaDeclVao.sq_ListeTiers
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
        end
      end
      object TabTiers311: TTabSheet
        Caption = 'Tiers Diego'
        ImageIndex = 2
        object DBGrid6: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 333
          Align = alClient
          DataSource = DaDeclVao.sq_ListeTiers
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
        end
      end
      object TabAnnexe210: TTabSheet
        Caption = 'Annexe Tve'
        ImageIndex = 3
        object DBGrid7: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 333
          Align = alClient
          DataSource = DaDeclVao.sq_AnnexeTVA
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
        end
      end
      object TabAnnexe311: TTabSheet
        Caption = 'Annexe Diego'
        ImageIndex = 4
        object DBGrid8: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 333
          Align = alClient
          DataSource = DaDeclVao.sq_AnnexeTVA
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
        end
      end
      object TabAnnexeConso: TTabSheet
        Caption = 'Annexe Conso'
        ImageIndex = 5
        object DBGrid9: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 333
          Align = alClient
          DataSource = DaDeclVao.sq_AnnexeTVA
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
        end
      end
    end
    object Memo1: TMemo
      Left = 48
      Top = 216
      Width = 537
      Height = 217
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
      Visible = False
    end
  end
  object s_tva_compte: TDataSource
    DataSet = DaDeclVao.tva_compte
    OnDataChange = s_tva_compteDataChange
    Left = 752
    Top = 176
  end
  object sq_TVAexcel_NumLigne: TDataSource
    DataSet = DaDeclVao.q_TVAexcel_NumLigne
    OnDataChange = sq_TVAexcel_NumLigneDataChange
    Left = 185
    Top = 73
  end
  object s_tva_excel: TDataSource
    DataSet = DaDeclVao.tva_excel
    OnDataChange = s_tva_excelDataChange
    Left = 93
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 389
    Top = 160
  end
end
