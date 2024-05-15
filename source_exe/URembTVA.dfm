object FRembTVA: TFRembTVA
  Left = 32
  Top = 66
  Width = 984
  Height = 679
  Caption = 'Rembourssement TVA'
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
  object Label13: TLabel
    Left = 10
    Top = 20
    Width = 28
    Height = 13
    Caption = 'Achat'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 968
    Height = 640
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Fichier d'#39'origine'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 960
        Height = 122
        Align = alTop
        Caption = 'P'#233'riode :'
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 92
          Top = 83
          Width = 77
          Height = 22
          Caption = 'Traitement==>'
          OnClick = SpeedButton5Click
        end
        object Label24: TLabel
          Left = 172
          Top = 88
          Width = 23
          Height = 13
          Caption = 'dans'
        end
        object DBGrid1: TDBGrid
          Left = 672
          Top = 8
          Width = 320
          Height = 120
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Visible = False
        end
        object GroupBox5: TGroupBox
          Left = 502
          Top = 16
          Width = 170
          Height = 50
          Caption = 'Affichage'
          TabOrder = 1
          object CheckBox3: TCheckBox
            Left = 16
            Top = 29
            Width = 144
            Height = 17
            Caption = 'Facture pas de r'#232'glement'
            TabOrder = 0
          end
          object CheckBox1: TCheckBox
            Left = 16
            Top = 11
            Width = 81
            Height = 17
            Caption = 'Inclure AN'
            TabOrder = 1
          end
        end
        object Edit1: TEdit
          Left = 207
          Top = 83
          Width = 373
          Height = 21
          TabOrder = 2
          Text = 'Edit1'
        end
        object GroupBox1: TGroupBox
          Left = 16
          Top = 16
          Width = 246
          Height = 49
          Caption = 'DU'
          TabOrder = 3
          object Label3: TLabel
            Left = 97
            Top = 22
            Width = 22
            Height = 13
            Caption = 'Mois'
          end
          object Label4: TLabel
            Left = 3
            Top = 21
            Width = 31
            Height = 13
            Caption = 'Ann'#233'e'
          end
          object ComboBox2: TComboBox
            Left = 121
            Top = 17
            Width = 122
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'ComboBox2'
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
            Left = 38
            Top = 18
            Width = 36
            Height = 21
            TabOrder = 1
            Text = '1999'
          end
          object UpDown1: TUpDown
            Left = 74
            Top = 18
            Width = 16
            Height = 21
            Associate = Edit4
            Min = 1999
            Max = 2030
            Position = 1999
            TabOrder = 2
            Thousands = False
          end
        end
        object GroupBox13: TGroupBox
          Left = 263
          Top = 16
          Width = 237
          Height = 49
          Caption = 'AU'
          TabOrder = 4
          object Label5: TLabel
            Left = 97
            Top = 20
            Width = 22
            Height = 13
            Caption = 'Mois'
          end
          object Label6: TLabel
            Left = 4
            Top = 20
            Width = 31
            Height = 13
            Caption = 'Ann'#233'e'
          end
          object ComboBox1: TComboBox
            Left = 122
            Top = 15
            Width = 110
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
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
          object Edit3: TEdit
            Left = 38
            Top = 17
            Width = 35
            Height = 21
            TabOrder = 1
            Text = '1999'
          end
          object UpDown2: TUpDown
            Left = 73
            Top = 17
            Width = 16
            Height = 21
            Associate = Edit3
            Min = 1999
            Max = 2030
            Position = 1999
            TabOrder = 2
            Thousands = False
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 122
        Width = 960
        Height = 360
        Align = alClient
        Caption = 'Liste de(s) facture(s)'
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 956
          Height = 343
          Align = alClient
          DataSource = S_RRembTVA
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 571
        Width = 960
        Height = 41
        Align = alBottom
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          Left = 5
          Top = 10
          Width = 113
          Height = 23
          Caption = 'Lettrage'
          Visible = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 121
          Top = 10
          Width = 113
          Height = 23
          Caption = 'Paiement partiel'
          Visible = False
        end
        object SpeedButton3: TSpeedButton
          Left = 412
          Top = 11
          Width = 149
          Height = 22
          Caption = 'Visualiser'
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
          OnClick = SpeedButton3Click
        end
        object SpeedButton6: TSpeedButton
          Left = 239
          Top = 10
          Width = 113
          Height = 23
          Caption = 'Corriger la valeur HT'
          Visible = False
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 482
        Width = 960
        Height = 89
        Align = alBottom
        Caption = 'Information sur le(s) r'#232'glement(s)'
        TabOrder = 3
        Visible = False
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 956
          Height = 72
          Align = alClient
          DataSource = S_RRembTVA_Rglt
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Copie pour sortie en '#233'tat'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 825
        Top = 0
        Width = 135
        Height = 612
        Align = alRight
        TabOrder = 0
        object SpeedButton11: TSpeedButton
          Left = 4
          Top = 13
          Width = 109
          Height = 22
          Caption = 'Ouvrir'
          OnClick = SpeedButton11Click
        end
        object SpeedButton7: TSpeedButton
          Left = 6
          Top = 127
          Width = 107
          Height = 23
          Caption = 'Consult. Rglt partiel'
          OnClick = SpeedButton7Click
        end
        object SpeedButton9: TSpeedButton
          Left = 19
          Top = 589
          Width = 94
          Height = 22
          Caption = 'Visualiser'
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
          OnClick = SpeedButton9Click
        end
        object Label22: TLabel
          Left = 10
          Top = 292
          Width = 77
          Height = 13
          Caption = 'TVA '#224'  partir de '
        end
        object SpeedButton10: TSpeedButton
          Left = 8
          Top = 344
          Width = 113
          Height = 22
          Caption = 'Lancer'
          OnClick = SpeedButton10Click
        end
        object GroupBox10: TGroupBox
          Left = 4
          Top = 44
          Width = 101
          Height = 77
          Caption = 'Ecriture et lettrage'
          TabOrder = 0
          object SpeedButton4: TSpeedButton
            Left = 8
            Top = 22
            Width = 81
            Height = 22
            Caption = 'Facture'
            OnClick = SpeedButton4Click
          end
          object SpeedButton8: TSpeedButton
            Left = 10
            Top = 49
            Width = 81
            Height = 22
            Caption = 'Paiement'
            OnClick = SpeedButton8Click
          end
        end
        object RadioGroup1: TRadioGroup
          Left = 20
          Top = 440
          Width = 101
          Height = 145
          Caption = 'Visualiser'
          ItemIndex = 0
          Items.Strings = (
            'N'#176'Pcs'
            'sans N'#176'Pcs'
            '/Frns')
          TabOrder = 1
        end
        object RadioGroup2: TRadioGroup
          Left = 12
          Top = 168
          Width = 101
          Height = 114
          Caption = 'Tri'
          ItemIndex = 0
          Items.Strings = (
            'N'#176'Pcs'
            'Date facture '
            'Fournisseurs')
          TabOrder = 2
        end
        object ComboBox3: TComboBox
          Left = 6
          Top = 312
          Width = 121
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'Tous'
          Items.Strings = (
            'Tous'
            'MAchat'
            'MVente'
            'MTresorerie'
            'MtAutres'
            'MTaux')
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 825
        Height = 612
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 831
          Height = 442
          Align = alClient
          DataSource = S_CopieRembTVA
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object GroupBox6: TGroupBox
          Left = 1
          Top = 443
          Width = 831
          Height = 173
          Align = alBottom
          Caption = 'Saisie et modification'
          TabOrder = 1
          object Label25: TLabel
            Left = 728
            Top = 11
            Width = 17
            Height = 13
            Caption = 'NIF'
          end
          object Label26: TLabel
            Left = 728
            Top = 51
            Width = 49
            Height = 13
            Caption = 'Statistique'
          end
          object GroupBox7: TGroupBox
            Left = 8
            Top = 14
            Width = 713
            Height = 68
            Caption = 'Facture'
            TabOrder = 0
            object Label1: TLabel
              Left = 20
              Top = 17
              Width = 23
              Height = 13
              Caption = 'Date'
            end
            object Label2: TLabel
              Left = 149
              Top = 17
              Width = 12
              Height = 13
              Caption = 'N'#176
            end
            object Label7: TLabel
              Left = 327
              Top = 43
              Width = 54
              Height = 13
              Caption = 'Fournisseur'
            end
            object Label8: TLabel
              Left = 17
              Top = 43
              Width = 25
              Height = 13
              Caption = 'Objet'
            end
            object Label15: TLabel
              Left = 475
              Top = 14
              Width = 40
              Height = 13
              Caption = 'Date rglt'
            end
            object Label16: TLabel
              Left = 613
              Top = 16
              Width = 20
              Height = 13
              Caption = 'R'#233'f.'
            end
            object Label10: TLabel
              Left = 330
              Top = 16
              Width = 45
              Height = 13
              Caption = 'Cpte Frns'
            end
            object DBEdit1: TDBEdit
              Left = 49
              Top = 13
              Width = 91
              Height = 21
              DataField = 'DateFact'
              DataSource = S_CopieRembTVA
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 384
              Top = 40
              Width = 321
              Height = 21
              DataField = 'Fournisseur'
              DataSource = S_CopieRembTVA
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 166
              Top = 12
              Width = 152
              Height = 21
              DataField = 'NumFact'
              DataSource = S_CopieRembTVA
              TabOrder = 2
            end
            object DBEdit9: TDBEdit
              Left = 524
              Top = 12
              Width = 82
              Height = 21
              DataField = 'DateRglt'
              DataSource = S_CopieRembTVA
              TabOrder = 3
            end
            object DBEdit10: TDBEdit
              Left = 643
              Top = 12
              Width = 55
              Height = 21
              Color = clSilver
              DataField = 'LigneTVA'
              DataSource = S_CopieRembTVA
              Enabled = False
              TabOrder = 4
            end
            object DBEdit7: TDBEdit
              Left = 383
              Top = 13
              Width = 90
              Height = 21
              DataField = 'CompteFnrs'
              DataSource = S_CopieRembTVA
              TabOrder = 5
              OnChange = DBEdit7Change
            end
            object DBEdit11: TDBEdit
              Left = 48
              Top = 39
              Width = 273
              Height = 21
              DataField = 'ObjetFact'
              DataSource = S_CopieRembTVA
              TabOrder = 6
            end
          end
          object GroupBox8: TGroupBox
            Left = 8
            Top = 95
            Width = 497
            Height = 46
            Caption = 'Montant'
            TabOrder = 1
            object Label9: TLabel
              Left = 170
              Top = 20
              Width = 15
              Height = 13
              Caption = 'HT'
            end
            object Label20: TLabel
              Left = 10
              Top = 20
              Width = 21
              Height = 13
              Caption = 'TVA'
            end
            object Label23: TLabel
              Left = 308
              Top = 20
              Width = 50
              Height = 13
              Caption = #224' partir de '
            end
            object DBEdit4: TDBEdit
              Left = 196
              Top = 16
              Width = 104
              Height = 21
              DataField = 'MontantHT'
              DataSource = S_CopieRembTVA
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 39
              Top = 16
              Width = 122
              Height = 21
              DataField = 'MontantTVA'
              DataSource = S_CopieRembTVA
              TabOrder = 1
            end
            object DBEdit12: TDBEdit
              Left = 372
              Top = 16
              Width = 104
              Height = 21
              DataField = 'MtRetenu'
              DataSource = S_CopieRembTVA
              TabOrder = 2
            end
          end
          object GroupBox9: TGroupBox
            Left = 511
            Top = 95
            Width = 290
            Height = 45
            Caption = 'N'#176' Pi'#232'ce'
            TabOrder = 2
            object Label12: TLabel
              Left = 10
              Top = 20
              Width = 28
              Height = 13
              Caption = 'Achat'
            end
            object Label14: TLabel
              Left = 138
              Top = 20
              Width = 19
              Height = 13
              Caption = 'Rglt'
            end
            object DBEdit6: TDBEdit
              Left = 54
              Top = 16
              Width = 67
              Height = 21
              DataField = 'PcsAchat'
              DataSource = S_CopieRembTVA
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 182
              Top = 16
              Width = 90
              Height = 21
              DataField = 'PcsRglt'
              DataSource = S_CopieRembTVA
              TabOrder = 1
            end
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 153
            Width = 827
            Height = 18
            DataSource = S_CopieRembTVA
            Align = alBottom
            TabOrder = 3
          end
          object DBEdit13: TDBEdit
            Left = 728
            Top = 26
            Width = 82
            Height = 21
            DataField = 'NIF'
            DataSource = S_CopieRembTVA
            TabOrder = 4
          end
          object DBEdit14: TDBEdit
            Left = 727
            Top = 67
            Width = 122
            Height = 21
            DataField = 'Stat'
            DataSource = S_CopieRembTVA
            TabOrder = 5
          end
        end
      end
      object Panel2: TPanel
        Left = 81
        Top = 31
        Width = 745
        Height = 183
        Caption = 'Panel2'
        TabOrder = 2
        Visible = False
        object DBGrid6: TDBGrid
          Left = 1
          Top = 49
          Width = 743
          Height = 133
          Align = alClient
          DataSource = s_RRembTVA_Facture
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object GroupBox11: TGroupBox
          Left = 1
          Top = 1
          Width = 743
          Height = 48
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label11: TLabel
            Left = 24
            Top = 24
            Width = 23
            Height = 13
            Caption = 'Tiers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 214
            Top = 25
            Width = 23
            Height = 13
            Caption = 'Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 390
            Top = 24
            Width = 74
            Height = 13
            Caption = 'Mois comptable'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 480
            Top = 23
            Width = 97
            Height = 17
            DataField = 'Mois'
            DataSource = s_RRembTVA_Facture
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 595
            Top = 22
            Width = 65
            Height = 17
            DataField = 'Annee'
            DataSource = s_RRembTVA_Facture
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 64
            Top = 24
            Width = 129
            Height = 17
            DataField = 'Tiers'
            DataSource = s_RRembTVA_Facture
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 248
            Top = 25
            Width = 129
            Height = 17
            DataField = 'DateEsc'
            DataSource = s_RRembTVA_Facture
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 24
            Top = 0
            Width = 113
            Height = 17
            DataField = 'Journal'
            DataSource = s_RRembTVA_Facture
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Panel3: TPanel
        Left = 24
        Top = 243
        Width = 745
        Height = 183
        Caption = 'Panel3'
        TabOrder = 3
        Visible = False
        object DBGrid7: TDBGrid
          Left = 1
          Top = 49
          Width = 743
          Height = 133
          Align = alClient
          DataSource = S_RRembTVA_Rglt
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object GroupBox12: TGroupBox
          Left = 1
          Top = 1
          Width = 743
          Height = 48
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label19: TLabel
            Left = 8
            Top = 24
            Width = 23
            Height = 13
            Caption = 'Tiers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 14
            Top = 0
            Width = 27
            Height = 13
            Caption = 'Lettre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 48
            Top = 0
            Width = 84
            Height = 17
            DataField = 'lettra'
            DataSource = S_CopieRembTVA
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 40
            Top = 24
            Width = 89
            Height = 17
            DataField = 'CompteFnrs'
            DataSource = S_CopieRembTVA
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 136
            Top = 25
            Width = 577
            Height = 17
            DataField = 'Fournisseur'
            DataSource = S_CopieRembTVA
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  object S_RRembTVA: TDataSource
    DataSet = PStockee.RRembTVA_Facture
    Left = 424
    Top = 173
  end
  object S_RRembTVA_Rglt: TDataSource
    DataSet = PStockee.RRembTVA_Rglt
    Left = 328
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = PStockee.R_Centralisateur
    Left = 504
    Top = 216
  end
  object S_CopieRembTVA: TDataSource
    DataSet = PStockee.CopieRembTVA
    OnDataChange = S_CopieRembTVADataChange
    Left = 252
    Top = 496
  end
  object s_RRembTVA_Facture: TDataSource
    DataSet = PStockee.RRembTVA_Facture
    Left = 636
    Top = 152
  end
end
