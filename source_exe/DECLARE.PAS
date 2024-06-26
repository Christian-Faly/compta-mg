unit declare;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Buttons, StdCtrls, ComCtrls, Grids, DBGrids,
  Db, DBTables, DBCtrls;

type
  TFDeclare = class(TForm)
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    UpDown1: TUpDown;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    UpDown2: TUpDown;
    SourceAdeclarer: TDataSource;
    Destination: TTable;
    BatchMove1: TBatchMove;
    SaveDialog1: TSaveDialog;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton14: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Edit5: TEdit;
    Edit7: TEdit;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Edit6: TEdit;
    RadioGroup2: TRadioGroup;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RadioGroup3: TRadioGroup;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    SpeedButton7: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CheckBox3: TCheckBox;
    ComboBox3: TComboBox;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    CheckBox5: TCheckBox;
    SpeedButton11: TSpeedButton;
    Detenteur: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox4: TCheckBox;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    CheckBox6: TCheckBox;
    Panel2: TPanel;
    SpeedButton15: TSpeedButton;
    Edit8: TEdit;
    DataSource2: TDataSource;
    CheckBox7: TCheckBox;
    DBGrid1: TDBGrid;
    DataSource3: TDataSource;
    Edit9: TEdit;
    CheckBox8: TCheckBox;
    DataSource4: TDataSource;
    CheckBox9: TCheckBox;
    SpeedButton17: TSpeedButton;
    Edit10: TEdit;
    Label2: TLabel;
    CheckBox10: TCheckBox;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Edit5Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { D�clarations priv�es }
    mody:shortint;
    QteIdentifie,QteNonIdentifie,
    Identifie,nonidentifie:real;
    num:integer;
    NatureProd,Adresse,statistique:string;
    NoChange,detailCpt:boolean;
    Declare:string;
    AvecTaux:boolean;
    function RaisoParams(Ajout:Boolean):boolean;
    procedure AjoutPS(CptDe,CptA:string);
    procedure SupprPS(CptDE,CptA:string);
    procedure Apercu(Fichier:string);
    procedure Recap(Fichier:string);
    //procedure CreateViewOperationTVA;
  public
    { D�clarations publiques }
    procedure Asehoy(mode:shortint);
  end;

Const
  MODE_VENTE=0 ;
  MODE_ACHAT=1;
  MODE_PREST=2;
  MODE_TVA=3;
  MODE_SOI_MEME=4 ;
  MODE_BAL_CONSO=5;
  MODE_TIERS_DECL=6;
  MODE_NON_ANNEXE=7;
  MODE_CENTRAL_TVA=8;

var
  FDeclare: TFDeclare;

implementation

uses Daspecia, DaCommun, EtatAPL, VenteMse, EtaTaxe, EtaPerst, RepoDecl,
  EtaOutil, AnnexTVA, USQL, UPStocke, TypeElmt, ImpMAJ1;

{$R *.DFM}

procedure TFDeclare.Asehoy(mode:shortint);
var year,Month,Day:word;
begin
  NoChange:=false;
  Autoscroll:=false;
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  Edit4.text:=inttostr(Year);
  UpDown1.position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);
  Edit3.text:=inttostr(Year);
  UpDown2.position:=Year;
  ComboBox1.ItemIndex:=Month-1;
  DASQL.SelUnion.close;
  DASQL.SelUnion.SQL.clear;
  DASQL.SelUnion.SQL.Add('select * from UnionCp ');
  DASQL.SelUnion.SQL.Add('where Utilisation=:a');
  mody:=mode;
  Special.decl.CLOSE;
  SpeedButton12.Visible:=false;
  SpeedButton13.Visible:=false;
  CASE Mody OF
    MODE_VENTE:
    begin
      Edit10.Text:='DecVente';
      Detenteur.Visible:=false;
      CheckBox4.Visible:=true;
      SpeedButton6.Visible:=true;
      SpeedButton6.Caption:='R�cap compta';
      SpeedButton10.Caption:='D�tail par compte';
      SpeedButton10.Visible:=true;
      Caption:='Param�trages Ventes de marchandises';
      GroupBox1.Visible:=true;
      SpeedButton2.Visible:=true;
      CheckBox3.Visible:=true;
      CheckBox4.Visible:=true;
      SpeedButton10.Visible:=true;

      Panel1.Visible:=true;
      CheckBox1.Visible:=true;
      CheckBox2.Visible:=true;
      ComboBox3.Visible:=true;
      Panel1.Visible:=true;
      RadioGroup1.Visible:=true;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      SpeedButton3.Visible:=true;
      SpeedButton5.Visible:=false;
      GroupBox3.Visible:=true;

      SourceAdeclarer.DataSet:=Special.Decl;
      Special.Decl.TableName:='DecVente';
      RadioGroup1.Caption:='Type Ventes s/clients';
      RadioGroup1.Items.clear;
      RadioGroup1.Items.Add('Tous');
      RadioGroup1.Items.Add('Gros/Demi-gros');
      RadioGroup1.Items.Add('Administration');
      RadioGroup1.Items.Add('Exportation');
      RadioGroup1.Items.Add('D�tail./partic.');
      SpeedButton1.Caption:='Liste Clients';
      SpeedButton3.Visible:=true;
      SpeedButton3.Caption:='R�cap.Type Ventes';
      Declare:='VENTE';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('VENTE');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
    end;   { 22 259 92 }
    MODE_ACHAT:
    begin
      Edit10.Text:='DecAchat';
      CheckBox4.Visible:=true;
      SpeedButton6.Visible:=true;
      SpeedButton6.Caption:='R�cap compta';
      SpeedButton10.Visible:=true;
      SpeedButton10.Caption:='D�tail par compte';
      Caption:='Param�trages Achats Produits Locaux';
      GroupBox1.Visible:=true;
      SpeedButton2.Visible:=true;
      CheckBox3.Visible:=true;
      CheckBox4.Visible:=true;
      SpeedButton10.Visible:=true;

      Panel1.Visible:=true;
      CheckBox1.Visible:=true;
      CheckBox2.Visible:=true;
      ComboBox3.Visible:=true;
      GroupBox3.Visible:=true;
      Panel1.Visible:=true;
      RadioGroup1.Visible:=true;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      SpeedButton5.Visible:=false;
      SpeedButton3.Visible:=true;
      RadioGroup5.ItemIndex:=1;

      SourceAdeclarer.DataSet:=Special.DecAchat;
      Special.decl.TableName:='DecAchat';
      RadioGroup1.Caption:='Type Achats s/fournisseurs';
      RadioGroup1.Items.clear;
      RadioGroup1.Items.Add('Tous');
      RadioGroup1.Items.Add('Identifi�s');
      RadioGroup1.Items.Add('Non identifi�s');
      RadioGroup1.Items.Add('PL (Code SCIM)');
      RadioGroup1.Visible:=true;
      SpeedButton1.Caption:='Liste Frns PL';
      SpeedButton3.Visible:=true;
      SpeedButton3.Caption:='Recap.Achats PL';
      Declare:='ACHAT';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('ACHAT PL');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
    end;
    MODE_PREST:
    begin
      Edit10.Text:='DecPrest';
      CheckBox4.Visible:=true;
      SpeedButton6.Visible:=true;
      SpeedButton6.Caption:='R�cap compta';
      SpeedButton10.Visible:=true;
      Caption:='Param�trages Prestations de services';
      SpeedButton10.Caption:='D�tail par compte';
      GroupBox1.Visible:=true;
      SpeedButton2.Visible:=true;
      CheckBox3.Visible:=true;
      CheckBox4.Visible:=true;
      SpeedButton6.Visible:=true;
      SpeedButton10.Visible:=true;
      SpeedButton13.Visible:=true;

      Panel1.Visible:=true;
      CheckBox1.Visible:=true;
      CheckBox2.Visible:=true;
      ComboBox3.Visible:=true;
      GroupBox3.Visible:=true;
      Panel1.Visible:=true;
      RadioGroup1.Visible:=FALSE;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      SpeedButton5.Visible:=true;
      SpeedButton3.Visible:=true;

      SourceAdeclarer.DataSet:=Special.Decl;
      Special.decl.TableName:='DecPrest';
      RadioGroup1.Visible:=false;
      SpeedButton1.Caption:='Liste Prestataires';
      SpeedButton3.Visible:=true;
      SpeedButton3.Caption:='Formulaires';
      Declare:='PRESTATION';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('PRESTATION');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
    end;
    MODE_TVA:
    begin
      CheckBox4.Visible:=false;
      SpeedButton6.Visible:=true;
      SpeedButton6.Caption:='Liste Fournisseurs';
      SpeedButton10.Caption:='Liste Clients';
      Caption:='Param�trages TVA';
      GroupBox1.Visible:=true;
      SpeedButton2.Visible:=true;
      CheckBox3.Visible:=true;
      CheckBox4.Visible:=true;
      SpeedButton6.Visible:=true;
      SpeedButton10.Visible:=true;
      SpeedButton12.Visible:=true;
      Panel1.Visible:=true;
      CheckBox1.Visible:=FALSE;
      CheckBox2.Visible:=false;
      ComboBox3.Visible:=true;
      Edit2.Visible:=FALSE;
      Edit6.Visible:=FALSE;
      GroupBox3.Visible:=true;
      Panel1.Visible:=FALSE;
      RadioGroup1.Visible:=FALSE;
      RadioGroup4.Visible:=true;
      RadioGroup5.Visible:=true;
      SpeedButton5.Visible:=false;
      SpeedButton3.Visible:=false;

      SpeedButton1.Caption:='Bordereau TVA';
      Declare:='TVA';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('Ligne1ab');
      ComboBox3.Items.Add('Ligne2ab');
      ComboBox3.Items.Add('Ligne3ab');
      ComboBox3.Items.Add('Ligne21e');
      ComboBox3.Items.Add('Ligne22e');
      ComboBox3.Items.Add('Ligne3e');
      ComboBox3.Items.Add('Ligne51f');
      ComboBox3.Items.Add('Ligne51g');
      ComboBox3.Items.Add('Ligne52f');
      ComboBox3.Items.Add('Ligne52g');
      ComboBox3.Items.Add('Ligne53f');
      ComboBox3.Items.Add('Ligne53g');
      ComboBox3.Items.Add('Ligne9');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
    end;
    MODE_SOI_MEME :
    begin
      CheckBox4.Visible:=false;
      SpeedButton6.Visible:=False;
      SpeedButton10.Visible:=False;
      Caption:='Param�trages Livraison � soi-m�me';
      GroupBox1.Visible:=false;
      SpeedButton2.Visible:=false;
      CheckBox3.Visible:=false;
      CheckBox4.Visible:=false;
      SpeedButton6.Visible:=false;
      SpeedButton10.Visible:=false;

      Panel1.Visible:=true;
      GroupBox3.Visible:=false;
      RadioGroup1.Visible:=false;
      RadioGroup2.Visible:=false;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      RadioGroup5.ItemIndex:=1;
      SpeedButton5.Visible:=false;

      Declare:='SOI MEME';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('SOI MEME');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
      Panel1.Visible:=false;
    end;
    MODE_BAL_CONSO:
    begin
      Caption:='Param�trages de la balance consolid�e';
      GroupBox1.Visible:=false;
      SpeedButton2.Visible:=false;
      CheckBox3.Visible:=false;
      CheckBox4.Visible:=false;
      SpeedButton6.Visible:=false;
      SpeedButton10.Visible:=false;
      Panel1.Visible:=false;
      GroupBox3.Visible:=false;
      RadioGroup1.Visible:=false;
      RadioGroup2.Visible:=false;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      RadioGroup5.ItemIndex:=1;
      SpeedButton5.Visible:=false;
      Declare:='CONSOLID';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('NONCOMPENS');
      ComboBox3.Items.Add('PAS 3 POS');
      ComboBox3.Items.Add('TIT 4 POS');
      ComboBox3.Items.Add('STRICT DEB');
      ComboBox3.Items.Add('STRICT CRE');
      ComboBox3.Items.Add('DEP SLD CO');
      ComboBox3.Items.Add('NC_COMSLDC');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
      Panel1.Visible:=false;
    end;
    MODE_TIERS_DECL:
    begin
      Caption:='Param�trages balance consolid�e';
      GroupBox1.Visible:=false;
      SpeedButton2.Visible:=false;
      CheckBox3.Visible:=false;
      CheckBox4.Visible:=false;
      SpeedButton6.Visible:=false;
      SpeedButton10.Visible:=false;
      Panel1.Visible:=false;
      GroupBox3.Visible:=false;
      RadioGroup1.Visible:=false;
      RadioGroup2.Visible:=false;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      RadioGroup5.ItemIndex:=1;
      SpeedButton5.Visible:=false;
      Declare:='TIERS_DEC';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('TIERS_DEC');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
      Panel1.Visible:=false;
    end;
    MODE_CENTRAL_TVA:
    begin
      Caption:='Param�trages balance consolid�e';
      GroupBox1.Visible:=false;
      SpeedButton2.Visible:=false;
      CheckBox3.Visible:=false;
      CheckBox4.Visible:=false;
      SpeedButton6.Visible:=false;
      SpeedButton10.Visible:=false;
      Panel1.Visible:=false;
      GroupBox3.Visible:=false;
      RadioGroup1.Visible:=false;
      RadioGroup2.Visible:=false;
      RadioGroup4.Visible:=false;
      RadioGroup5.Visible:=false;
      RadioGroup5.ItemIndex:=1;
      SpeedButton5.Visible:=false;
      Declare:='CENTR_TVA';
      DASQL.SelParaDecl.close;
      DASQL.SelParaDecl.Parameters[0].Value:=Declare;
      ComboBox3.Items.Clear;
      ComboBox3.Items.Add('CENTR_TVA');
      ComboBox3.ItemIndex:=0;
      DASQL.SelParaDecl.Close;
      DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
      DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
      DASQL.SelParaDecl.Open;
      Panel1.Visible:=false;
    end;
  end;
  Autoscroll:=false;
  Showmodal;
end;


procedure TFDeclare.SpeedButton1Click(Sender: TObject);
begin
  if CheckBox10.Checked  then
    Apercu(Edit10.text)
  else
    Apercu('');
end;

procedure TFDeclare.Apercu(Fichier:string);
begin
  DetailCpt:=true;
  if RadioGroup3.ItemIndex=0 then
  begin
    case mody of
    MODE_VENTE:
    begin
        try
          Application.CreateForm(TFVenteMse, FVenteMse);
          FVenteMse.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),edit2.text,Fichier,0,CheckBox1.Checked,CheckBox2.Checked,CheckBox7.Checked,CheckBox9.Checked  );
        finally
          FVenteMse.free;
        end;
      end;
    MODE_ACHAT:
      begin
        try
          Application.CreateForm(TFEtatAPL, FEtatAPL);
          FEtatAPL.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),edit2.text,Fichier,0,CheckBox1.Checked,
                         CheckBox2.Checked,CheckBox7.Checked,CheckBox6.Checked,CheckBox9.Checked  );
        finally
          FEtatAPL.free;
        end;
      end;
    MODE_PREST:
      begin
        try
          Application.CreateForm(TFEtatPrest, FEtatPrest);
          FEtatPrest.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),Edit2.text,edit3.text,Fichier,0,CheckBox1.Checked,detailCpt,CheckBox2.Checked,CheckBox7.Checked,CheckBox9.Checked  );//eto
        finally
          FEtatPrest.free;
        end;
      end;
    MODE_TVA:
      begin
        try
          Application.CreateForm(TFEtatTaxe, FEtatTaxe);
          if RadioGroup5.ItemIndex=0 then AvecTaux:=False
          else AvecTaux:=true;
          FEtatTaxe.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),EnleveBlancDroite(ComboBox3.Text),AvecTaux,0,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox9.Checked  );
        finally
          FEtatTaxe.free;
        end;
      end;
    end;
  end;

  if RadioGroup3.ItemIndex=1 then
  begin
    case mody of
    MODE_VENTE :
      begin
        try
          Application.CreateForm(TFVenteMse, FVenteMse);
          FVenteMse.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),edit2.text,Fichier,4,CheckBox1.Checked,CheckBox2.Checked,CheckBox7.Checked,CheckBox9.Checked  );
        finally
          FVenteMse.free;
        end;
      end;
    MODE_ACHAT:
      begin
        try
          Application.CreateForm(TFEtatAPL, FEtatAPL);
          FEtatAPL.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),edit2.text,Fichier,4,CheckBox1.Checked,False,CheckBox7.Checked,CheckBox6.Checked,CheckBox9.Checked );
        finally
          FEtatAPL.free;
        end;
      end;
    MODE_PREST:
      begin
        try
          Application.CreateForm(TFEtatPrest, FEtatPrest);
          FEtatPrest.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),Edit2.text,edit3.text,Fichier,5,CheckBox1.Checked,detailCpt,CheckBox2.Checked,CheckBox7.Checked ,CheckBox9.Checked );//eto
        finally
          FEtatPrest.free;
        end;
      end;
    end;
  end;
end;

procedure TFDeclare.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  num:=num+1;
  if DASQL.DeclareStatistique1.Value>'0' then
  begin
    Identifie:=Identifie+DASQL.DeclareMontant.Value;
    QteIdentifie:=QteIdentifie+ DASQL.DeclareQte.Value;
  end
  else
  begin
    NonIdentifie:=NonIdentifie+DASQL.DeclareMontant.Value;
    QteNonIdentifie:=QteNonIdentifie+ DASQL.DeclareQte.Value;
  end;
end;

procedure TFDeclare.QRExpr6Print(sender: TObject; var Value: String);
begin
  NatureProd:=value;
end;

procedure TFDeclare.QRExpr7Print(sender: TObject; var Value: String);
begin
  Adresse:=value;
end;

procedure TFDeclare.QRExpr1Print(sender: TObject; var Value: String);
begin
  statistique:=value;
end;


procedure TFDeclare.SpeedButton14Click(Sender: TObject);
begin
  Edit7.text:='';
  Edit5.text:='';
end;

procedure TFDeclare.SpeedButton8Click(Sender: TObject);
begin
  if RaisoParams(true) and (mody = MODE_PREST)then
    AjoutPS(Edit5.text,edit7.text);
end;

function TFDeclare.RaisoParams(Ajout:Boolean):boolean;
begin
  Result:=true;
  NoChange:=true;
  if Ajout then
  begin
   DASQL.SelParaDecl.Insert;
   DASQL.SelParaDeclRubrique.Value:=EnleveBlancDroite(ComboBox3.text);
  end
  else
    DASQL.SelParaDecl.Edit;
  try
    DASQL.SelParaDeclParametre.Value:=Declare;
    DASQL.SelParaDeclCompteDe.Value:=Edit5.text;
    DASQL.SelParaDeclCompteA.Value:=Edit7.text;
    DASQL.SelParaDecl.Post;

 except
   On EDataBaseError do
   begin
     MessageDlg('Ce num�ro est d�j� dans la liste',mtError,[mbok],0);
     DASQL.SelParaDecl.Cancel;
     Result:=false;
   end;
 end;
 NoChange:=false;
end;


procedure TFDeclare.AjoutPS(CptDe,CptA:string);
begin
  PStockee.MettrePS.Close;
  PStockee.MettrePS.SQL.Clear;
  PStockee.MettrePS.SQL.Add('UPDATE NumDiver SET NumDiver.CodeProd = ''PS''');
  PStockee.MettrePS.SQL.Add('WHERE (('''+EnleveBlancDroite(CptDe)+'''<=NumDiver.NumCpt)and'+
                                         '(NumDiver.NumCpt<='''+EnleveBlancDroite(CptA)+'Z''))');
  PStockee.MettrePS.ExecSQL;
end;

procedure TFDeclare.SupprPS;
begin
  DASQL.SelNumDiverDeA.Close;
  DASQL.SelNumDiverDeA.parameters[0].Value:=CptDe;
  DASQL.SelNumDiverDeA.parameters[1].Value:=CptA;
  DASQL.SelNumDiverDeA.open;
  while not DASQL.SelNumDiverDeA.EOF do
  begin
    DASQL.SelNumDiverDeA.Edit;
    DASQL.SelNumDiverDeACodeProd.Value:='';
    DASQL.SelNumDiverDeA.POst;
    DASQL.SelNumDiverDeA.Next;
  end;;
end;

procedure TFDeclare.SpeedButton16Click(Sender: TObject);
var CptDe1,CptA1:string;
begin
  CptDe1:=DASQL.SelParaDeclCompteDe.Value;
  CptA1:=DASQL.SelParaDeclCompteA.Value;
  if RaisoParams(false) and (mody = MODE_PREST)then
  begin
    SupprPS(CptDe1,CptA1);
    AjoutPS(Edit5.text,edit7.text);
  end;
end;

procedure TFDeclare.ComboBox3Change(Sender: TObject);
begin
  DASQL.SelParaDecl.Close;
  DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.Text);
  DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
  DASQL.SelParaDecl.Open;

  if EnleveBlancDroite(ComboBox3.Text)='VENTE' then ComboBox3.Hint:='Comptes ventes � d�clarer';
  if EnleveBlancDroite(ComboBox3.Text)='ACHAT PL' then ComboBox3.Hint:='Comptes achats PL � d�clarer';
  if EnleveBlancDroite(ComboBox3.Text)='PRESTATION' then ComboBox3.Hint:='Comptes prestations � d�clarer';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne1ab' then ComboBox3.Hint:='Op�rations � l''exportation';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne2ab' then ComboBox3.Hint:='Op�rations locales';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne3ab' then ComboBox3.Hint:='LSM, RRR, 708, 75, 77';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne21e' then ComboBox3.Hint:='TVA sur op�rations locales ADPA';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne22e' then ComboBox3.Hint:='TVA sur op�rations locales ADPNA';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne3e' then ComboBox3.Hint:='TVA sur autres r�gularisations';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne51f' then ComboBox3.Hint:='TVA sur biens d''equip. et imm. loc.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne51g' then ComboBox3.Hint:='TVA sur biens d''equip. et imm. imp.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne52f' then ComboBox3.Hint:='TVA sur autres biens loc.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne52g' then ComboBox3.Hint:='TVA sur autres biens imp.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne53f' then ComboBox3.Hint:='TVA sur services loc.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne53g' then ComboBox3.Hint:='TVA sur services imp.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne6' then ComboBox3.Hint:='TVA sur services imp.';
  if EnleveBlancDroite(ComboBox3.Text)='Ligne9' then ComboBox3.Hint:='Compte de cr�dit de TVA';
  if EnleveBlancDroite(ComboBox3.Text)='SOI MEME' then ComboBox3.Hint:='Comptes livraisons soi-m�me';
  if EnleveBlancDroite(ComboBox3.Text)='NONCOMPENS' then ComboBox3.Hint:='Comptes non compens�s';
  if EnleveBlancDroite(ComboBox3.Text)='PAS 3 POS' then ComboBox3.Hint:='Comptes pas de titre 3 position';
  if EnleveBlancDroite(ComboBox3.Text)='TIT 4 POS' then ComboBox3.Hint:='Comptes � titre 4 position';
  if EnleveBlancDroite(ComboBox3.Text)='STRICT DEB' then ComboBox3.Hint:='Comptes strictement d�biteurs';
  if EnleveBlancDroite(ComboBox3.Text)='STRICT CRE' then ComboBox3.Hint:='Comptes strictement cr�diteurs';
  if EnleveBlancDroite(ComboBox3.Text)='DEP SLD CO' then ComboBox3.Hint:='Comptes d�b/cr�d en fonction solde consolid�';
end;

procedure TFDeclare.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if Nochange then exit;
  Edit5.text:=DASQL.SelParaDeclCompteDe.Value;
  Edit7.text:=DASQL.SelParaDeclCompteA.Value;
end;

procedure TFDeclare.Edit5Change(Sender: TObject);
begin
  Edit7.text:=edit5.text;
end;

procedure TFDeclare.SpeedButton3Click(Sender: TObject);
begin
  if CheckBox10.Checked then
    Recap(Edit10.text)
  else
    Recap('');
end;


procedure TFDeclare.Recap(Fichier:string);
begin
  if RadioGroup2.ItemIndex=0 then detailCpt:=true
  else detailCpt:=false;
  if (mody=  MODE_VENTE)or(mody=MODE_PREST) then RadioGroup1.ItemIndex:=0;
    case mody of
    MODE_VENTE:
      begin
       try
         Application.CreateForm(TFVenteMse, FVenteMse);
         FVenteMse.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         edit2.text,Fichier,1,CheckBox1.Checked,False,CheckBox7.Checked ,CheckBox9.Checked );
       finally
         FVenteMse.free;
       end;
     end;
    MODE_ACHAT:
      begin
        try
          Application.CreateForm(TFEtatAPL, FEtatAPL);
          FEtatAPL.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         edit2.text,Fichier,1,CheckBox1.Checked,false,CheckBox7.Checked,CheckBox6.Checked ,CheckBox9.Checked );
        finally
          FEtatAPL.free;
        end;
     end;
    MODE_PREST:
      begin
        try
          Application.CreateForm(TFEtatPrest, FEtatPrest);
          FEtatPrest.Imprimeo(RadioGroup1.ItemIndex,'',EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         Edit2.text,edit3.text,Fichier,1,CheckBox1.Checked,detailCpt,false,CheckBox7.Checked ,CheckBox9.Checked );//eto
        finally
          FEtatPrest.free;
        end;
      end;
    end;
end;


procedure TFDeclare.SpeedButton9Click(Sender: TObject);
var CptDe1,CptA1:string;
begin
  if MessageDlg('Voulez-vous vraiement supprimer ?',MtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    CptDe1:=DASQL.SelParaDeclCompteDe.Value;
    CptA1:=DASQL.SelParaDeclCompteA.Value;
    DASQL.SelParaDecl.Delete;
    if (mody = MODE_PREST) then SupprPS(CptDe1,CptA1);
  end;
end;

procedure TFDeclare.SpeedButton7Click(Sender: TObject);
var i:integer;
begin
  for i:=1 to 30 do
  begin
    entree[i].Ndf:='';
    entree[i].Critere:='';
    entree[i].Ndc:='';
    entree[i].Valeur :='';
    entree[i].Visible:=True;
    entree[i].Recherche:=False;
  end;
  //AsehoyDocDonnee2('O_Compta',Commun.SocieteChemin.Value ,Edit10.text,Entree);
end;

procedure TFDeclare.CheckBox1Click(Sender: TObject);
begin
  RadioGroup2.Visible:=CheckBox1.Checked;
  Edit9.Visible:=CheckBox1.Checked;
  Edit6.Visible:=CheckBox1.Checked;
end;

procedure TFDeclare.SpeedButton2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEtatTaxe, FEtatTaxe);
    FEtatTaxe.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+ formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+ formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),CheckBox2.Checked,1,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox9.Checked  );
  finally
    FEtatTaxe.free;
  end;
end;

procedure TFDeclare.RadioGroup3Click(Sender: TObject);
begin
{  if RadioGroup3.ItemIndex=0 then RadioGroup1.Visible:=false
  else RadioGroup1.Visible:=true;}
end;

procedure TFDeclare.SpeedButton5Click(Sender: TObject);
begin
  DASQL.SelParaDecl.first;
  while not DASQL.SelParaDecl.EOF do
  begin
    DASQL.SelNumDiver3.close;
    DASQL.SelNumDiver3.parameters[0].Value:=DASQL.SelParaDeclComptede.Value;
    DASQL.SelNumDiver3.parameters[1].Value:=DASQL.SelParaDeclCompteA.Value+'Z';
    DASQL.SelNumDiver3.open;
    while not DASQL.SelNumDiver3.EOF do
    begin
      if DASQL.SelNumDiver3CodeProd.Value<'0' then
      begin
        DASQL.SelNumDiver3.Edit;
        DASQL.SelNumDiver3CodeProd.Value:='PS';
        DASQL.SelNumDiver3.Post;
      end;
      DASQL.SelNumDiver3.Next;
    end;
    DASQL.SelParaDecl.Next;
  end;
end;

procedure TFDeclare.SpeedButton6Click(Sender: TObject);
begin
  panel1.Visible:=true;
  if SpeedButton6.Caption<>'Liste Fournisseurs' then
  try
    Application.CreateForm(TFEtatTaxe, FEtatTaxe);
    FEtatTaxe.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),CheckBox4.Checked,2,RadioGroup4.ItemIndex,CheckBox7.Checked, CheckBox9.Checked );
  finally
    FEtatTaxe.free;
  end
  else
  begin
    Special.MettreNumeroDouane:=true;
    try
      Application.CreateForm(TFAnnexTVA, FAnnexTVA);
      FAnnexTVA.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),edit1.text,CheckBox4.Checked,1,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox8.Checked, CheckBox9.Checked );
    finally
      FAnnexTVA.free;
    end;
    Special.MettreNumeroDouane:=false;
  end;
end;

procedure TFDeclare.SpeedButton10Click(Sender: TObject);
begin
  if SpeedButton10.Caption<>'Liste Clients' then
  try
    Application.CreateForm(TFEtatTaxe, FEtatTaxe);
    if (mody<>  MODE_ACHAT)and(mody<>  MODE_VENTE) then
      FEtatTaxe.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),CheckBox4.Checked,3,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox9.Checked  )
    else
      FEtatTaxe.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),CheckBox5.Checked,4,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox9.Checked );
  finally
    FEtatTaxe.free;
  end
  else
  begin
    Special.MettreNumeroDouane:=true;
    try
      Application.CreateForm(TFAnnexTVA, FAnnexTVA);
      FAnnexTVA.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),edit1.text,CheckBox4.Checked,0,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox8.Checked,CheckBox9.Checked   );
    finally
      FAnnexTVA.free;
    end;
    Special.MettreNumeroDouane:=false;
  end;
end;

procedure TFDeclare.SpeedButton11Click(Sender: TObject);
begin
  DASQL.DetTaxe.close;
  DASQL.DetTaxe.SQL.Clear;
  DASQL.DetTaxe.SQL.Add('select * from Declare x');
  DASQL.DetTaxe.SQL.Add('Where (x.periode>=:a)and(x.periode<=:b)');
  {DASQL.DetTaxe.SQL.Add('and ((x.Tiers<=''4110'')or(x.tiers>=''4112Z''))');}
  DASQL.SelParaDecl.close;
  DASQL.SelParaDecl.Parameters[1].Value:=EnleveBlancDroite(ComboBox3.text);
  DASQL.SelParaDecl.Parameters[2].Value:=EnleveBlancDroite(ComboBox3.Text)+'Z';
  DASQL.SelParaDecl.Open;

  if not DASQL.SelParaDecl.EOF then
  begin
    DASQL.DetTaxe.SQL.Add('  and(');
    while not DASQL.SelParaDecl.EOF do
    begin
      DASQL.DetTaxe.SQL.Add('((x.Compte>='''+DASQL.SelParaDeclCompteDe.Value+''')'+
      'and(x.Compte<'''+DASQL.SelParaDeclCompteA.Value+'Z''))');
      DASQL.SelParaDecl.Next;
      if not DASQL.SelParaDecl.EOF then DASQL.DetTaxe.SQL.Add(' or ');
    end;
    DASQL.DetTaxe.SQL.Add(')');
  end;
  DASQL.DetTaxe.SQL.Add('order by x.Tiers, x.Compte, x.code');
  DASQL.DetTaxe.Parameters[0].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
  DASQL.DetTaxe.Parameters[1].Value:=edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);
  DASQL.DetTaxe.Open;
  try
    Application.CreateForm(TFEtaOutil, FEtaOutil);
    FEtaOutil.QRLabel6.caption:=ComboBox2.Text +' '+Edit4.Text;
    FEtaOutil.QRLabel7.caption:=ComboBox1.Text +' '+Edit3.Text;
    FEtaOutil.Detail:=CheckBox4.checked;
    FEtaOutil.QuickRep1.preview;
  finally
    FEtaOutil.free;
  end;
end;


procedure TFDeclare.SpeedButton12Click(Sender: TObject);
begin
    Special.MettreNumeroDouane:=true;
    try
      Application.CreateForm(TFAnnexTVA, FAnnexTVA);
      FAnnexTVA.Imprimeo(EnleveBlancDroite(ComboBox3.text),
                         edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                         edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),
                         EnleveBlancDroite(ComboBox3.Text),edit1.text,CheckBox4.Checked,2,RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox8.Checked, CheckBox9.Checked   );
    finally
      FAnnexTVA.free;
    end;
    Special.MettreNumeroDouane:=false;
end;

procedure TFDeclare.SpeedButton13Click(Sender: TObject);
var voalohany:boolean;
begin
  PStockee.MettrePS.Close;
  PStockee.MettrePS.SQL.Clear;
  PStockee.MettrePS.SQL.Add('UPDATE NumDiver SET NumDiver.CodeProd = ''PS''');
  voalohany:=true;
  DaSQL.SelParaDecl.first;
  while not DaSQL.SelParaDecl.Eof do
  begin
    if voalohany then
    begin
      PStockee.MettrePS.SQL.Add('WHERE (('''+EnleveBlancDroite(DaSQL.SelParaDeclCompteDe.Value)+'''<=NumDiver.NumCpt)and'+
                                         '(NumDiver.NumCpt<='''+EnleveBlancDroite(DaSQL.SelParaDeclCompteDe.Value)+'Z''))');
      Voalohany:=false;
    end
    else
    begin
      PStockee.MettrePS.SQL.Add('OR (('''+EnleveBlancDroite(DaSQL.SelParaDeclCompteDe.Value)+'''<=NumDiver.NumCpt)and'+
                                         '(NumDiver.NumCpt<='''+EnleveBlancDroite(DaSQL.SelParaDeclCompteDe.Value)+'Z''))');
      Voalohany:=false;
    end;
    DaSQL.SelParaDecl.Next;
  end;
  PStockee.MettrePS.ExecSQL;
  //for i:=0 to PStockee.MettrePS.SQL.count-1 do
    //ShowMessage(PStockee.MettrePS.SQL[i]);
end;

procedure TFDeclare.SpeedButton15Click(Sender: TObject);
begin
  DaSQL.SelectParam('TVA','Ligne51g');
  if DaSQL.DansParam(EnleveBlancDroite(Edit8.text)) then
end;

procedure TFDeclare.Edit9Change(Sender: TObject);
begin
  if length(edit9.text)<6 then exit;
  if RadioGroup2.ItemIndex =0 then
  begin
    DASQL.SelNumAdres.Close;
    DASQL.SelNumAdres.Parameters[0].Value:=edit9.text;
    DASQL.SelNumAdres.open;
    edit6.text:=DASQL.SelNumAdresNom.Value;
  end
  else
  begin
    DASQL.SelNumDiverByStat.Close;
    DASQL.SelNumDiverByStat.Parameters[0].Value:=edit9.text;
    DASQL.SelNumDiverByStat.open;
    if DASQL.SelNumDiverByStat.RecordCount >0 then
    begin
      DASQL.SelNumAdres.Close;
      DASQL.SelNumAdres.Parameters[0].Value:=DASQL.SelNumDiverByStatNumCpt.Value ;
      DASQL.SelNumAdres.open;
      edit6.text:=DASQL.SelNumAdresNom.Value;
    end;
  end;
  if RadioGroup2.ItemIndex =0 then
    edit2.Text:=edit9.Text
  else
  begin
    case mody of
      MODE_VENTE: edit2.Text:='4111'+edit9.Text;
      MODE_ACHAT: edit2.Text:='4011'+edit9.Text;
      MODE_PREST: edit2.Text:='4011'+edit9.Text;
    end;
  end;
end;

procedure TFDeclare.SpeedButton17Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEtatTaxe, FEtatTaxe);
    if RadioGroup5.ItemIndex=0 then AvecTaux:=False
    else AvecTaux:=true;
    FEtatTaxe.Imprimeo(EnleveBlancDroite(ComboBox3.text),
          edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
          edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1),EnleveBlancDroite(ComboBox3.Text),AvecTaux,5,
          RadioGroup4.ItemIndex,CheckBox7.Checked,CheckBox9.Checked );
  finally
    FEtatTaxe.free;
  end;
end;

procedure TFDeclare.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    CheckBox10.Checked:=false;
end;

procedure TFDeclare.CheckBox10Click(Sender: TObject);
begin
  if CheckBox10.Checked then
    CheckBox2.Checked :=false;
end;

procedure TFDeclare.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid3.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
          Dbgrid3.Canvas.Brush.Color:=$00D9B3FF;
     end;
   DBGrid3.DefaultDrawColumnCell(Rect,Datacol,Column,State);

end;

end.
