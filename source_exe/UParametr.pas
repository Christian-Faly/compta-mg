unit UParametr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ImgList, Grids,
  DBGrids, ComCtrls, DB, ADODB;

type
  TFParametr = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RadioButton1: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Edit4: TEdit;
    UpDown1: TUpDown;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    UpDown2: TUpDown;
    Label8: TLabel;
    Label9: TLabel;
    sTParametr: TDataSource;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBRadioGroup3: TDBRadioGroup;
    DBMemo1: TDBMemo;
    DBEdit8: TDBEdit;
    RadioButton4: TRadioButton;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    GroupBox5: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    CheckBox3: TCheckBox;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Edit1: TEdit;
    CheckBox2: TCheckBox;
    GroupBox6: TGroupBox;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Edit2: TEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure sTParametrDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    isCalcul:boolean;
    procedure Afficher(Typa:string;Cocher:boolean);
  public
    { Public declarations }
    procedure Asehoy;
  end;

var
  FParametr: TFParametr;

implementation

uses Daspecia, UMoteur, USQL, DaCommun, UPStocke, UEtNvTVA, ImpMAJ1;

{$R *.dfm}

procedure TFParametr.Asehoy;
var year,Month,Day:word;
begin
  daSQL.RubriqueTVA.Open;
  Special.TParametr.Open;
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  Edit4.text:=inttostr(Year);
  UpDown1.position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);
  Edit3.text:=inttostr(Year);
  UpDown2.position:=Year;
  ComboBox1.ItemIndex:=Month-1;
  showModal;
end;

procedure TFParametr.RadioButton1Click(Sender: TObject);
begin
  Afficher(RadioButton1.Caption,false);
end;

procedure TFParametr.RadioButton3Click(Sender: TObject);
begin
  Afficher(RadioButton3.Caption,false);
end;

procedure TFParametr.RadioButton2Click(Sender: TObject);
begin
  Afficher(RadioButton2.Caption,false);
end;

procedure TFParametr.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if button=nbPost then
  begin
    if RadioButton1.Checked then
      Special.TParametrTypCalcul.Value:='Rubrique';
    if RadioButton2.Checked then
      Special.TParametrTypCalcul.Value:='Opération';
    if RadioButton3.Checked then
      Special.TParametrTypCalcul.Value:='Constante';
    if RadioButton4.Checked then
      Special.TParametrTypCalcul.Value:='Compte';
  end;
  if button=nbInsert then
  begin
    DBEdit1.SetFocus;
  end;
end;


procedure TFParametr.Afficher(Typa:string;Cocher:boolean);
begin
  if Typa='Rubrique' then
  begin
    if cocher then RadioButton1.Checked:=true;
    DBCheckBox3.Visible := False;
    GroupBox4.Visible :=true;
    DBRadioGroup1.Visible :=true;
    DBRadioGroup2.Visible :=true;
    DBRadioGroup4.Visible := true;
    DBCheckBox2.Visible:=True;

    DBEdit6.Visible:=False;
    DBEdit5.Visible:=False;
    DBEdit8.Visible:=False;
    Label13.Visible:=False;
    DBEdit9.Visible:=False;
    DBLookupComboBox1.Visible:=True;
    exit;
  end;
  if Typa='Opération' then
  begin
    if cocher then RadioButton2.Checked:=true;
    DBCheckBox3.Visible := true;
    GroupBox4.Visible :=false;
    DBRadioGroup1.Visible :=false;
    DBRadioGroup2.Visible :=false;
    DBRadioGroup4.Visible := False;
    DBCheckBox2.Visible:=False;

    DBEdit6.Visible:=true;
    DBEdit5.Visible:=False;
    DBEdit8.Visible:=False;
    Label13.Visible:=False;
    DBEdit9.Visible:=False;
    DBLookupComboBox1.Visible:=False;
    exit;
  end;
  if Typa='Compte' then
  begin
    if cocher then RadioButton4.Checked:=true;
    DBCheckBox3.Visible := False;
    GroupBox4.Visible :=false;
    DBRadioGroup1.Visible :=false;
    DBRadioGroup2.Visible :=false;
    DBRadioGroup4.Visible := true;
    DBCheckBox2.Visible:=True;

    DBEdit6.Visible:=False;
    DBEdit5.Visible:=False;
    DBEdit8.Visible:=True;
    Label13.Visible:=True;
    DBEdit9.Visible:=True;
    DBLookupComboBox1.Visible:=False;
    exit;
  end;
  if Typa='Constante' then
  begin
    if cocher then RadioButton3.Checked:=true;
    DBCheckBox3.Visible := true;
    GroupBox4.Visible :=false;
    DBRadioGroup1.Visible :=false;
    DBRadioGroup2.Visible :=false;
    DBRadioGroup4.Visible := false;
    DBCheckBox2.Visible:=False;

    DBEdit6.Visible:=false;
    DBEdit5.Visible:=True;
    DBEdit8.Visible:=False;
    Label13.Visible:=False;
    DBEdit9.Visible:=False;
    DBLookupComboBox1.Visible:=False;
    exit;
  end;
end;

procedure TFParametr.sTParametrDataChange(Sender: TObject; Field: TField);
begin
  if IsCalcul or (Special.TParametr.State <>dsBrowse) then exit;
  if Special.TParametrTypCalcul.Value='Rubrique' then
  begin
    DASQL.qParaDecl.Close;
    DASQL.qParaDecl.Parameters[0].Value := Special.TParametrRubrique.Value ;
    DASQL.qParaDecl.Open;
  end;
  Afficher(Special.TParametrTypCalcul.Value,true);
end;

procedure TFParametr.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraiment supprimer la rubrique '+
                DASQL.qParaDeclRubrique.Value+'+'+
                DASQL.qParaDeclCompteDe.Value+'-'+
                DASQL.qParaDeclCompteA.Value,mtConfirmation,[mbYes,MbNo],0)=mrYes then
    DASQL.qParaDecl.Delete;
  DASQL.RubriqueTVA.Requery;
end;

procedure TFParametr.BitBtn2Click(Sender: TObject);
begin
  DASQL.qParaDeclParametre.Value:='TVA';
  DASQL.qParaDecl.Post;
  Panel3.Visible:=False;
  Panel1.Enabled:=True;
  DASQL.RubriqueTVA.Requery;
  DASQL.qParaDecl.Requery;
end;

procedure TFParametr.BitBtn3Click(Sender: TObject);
begin
  DASQL.qParaDecl.Cancel;
  Panel3.Visible:=False;
  Panel1.Enabled:=True;
end;

procedure TFParametr.SpeedButton3Click(Sender: TObject);
begin
  Panel1.Enabled:=False;
  DASQL.qParaDecl.Insert;
  Panel3.Visible:=true;
end;

procedure TFParametr.SpeedButton5Click(Sender: TObject);
begin
  Panel1.Enabled:=False;
  DASQL.qParaDecl.Edit;
  DASQL.qParaDeclRubrique.Value:=DBLookupComboBox1.Text;
  Panel3.Visible:=true;
end;

procedure TFParametr.SpeedButton4Click(Sender: TObject);
begin
  Panel1.Enabled:=False;
  DASQL.qParaDecl.Insert;
  DASQL.qParaDeclRubrique.Value:=DBLookupComboBox1.Text;
  Panel3.Visible:=true;
end;

procedure TFParametr.SpeedButton6Click(Sender: TObject);
begin
  FEtNvTVA.Imprimeo(Edit4.Text+'/'+FormatFloat('00',ComboBox2.ItemIndex+1),Edit3.Text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1),'',
                    0,True,CheckBox2.Checked,RadioButton5.Checked  );
end;

procedure TFParametr.RadioButton4Click(Sender: TObject);
begin
  Afficher(RadioButton4.Caption,false);
end;

procedure TFParametr.SpeedButton8Click(Sender: TObject);
begin
  //FEtNvTVA.CreerListe(edit1.text);
  FEtNvTVA.Requete(RadioButton5.Checked,Edit4.Text+'/'+FormatFloat('00',ComboBox2.ItemIndex+1),Edit3.Text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1),
     'Créer',Edit1.text);
end;

procedure TFParametr.SpeedButton7Click(Sender: TObject);
begin
  FEtNvTVA.Imprimeo(Edit4.Text+'/'+FormatFloat('00',ComboBox2.ItemIndex+1),Edit3.Text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1),Edit1.text,
                    0,True,CheckBox2.Checked,RadioButton5.Checked  );
end;

procedure TFParametr.SpeedButton9Click(Sender: TObject);
begin
  isCalcul:=True;
  FEtNvTVA.Imprimeo(Edit4.Text+'/'+FormatFloat('00',ComboBox2.ItemIndex+1),Edit3.Text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1),'',
                    2,True,CheckBox2.Checked,RadioButton5.Checked  );
  isCalcul:=False;
end;

procedure TFParametr.SpeedButton10Click(Sender: TObject);
begin
  isCalcul:=True;
  FEtNvTVA.Imprimeo(Edit4.Text+'/'+FormatFloat('00',ComboBox2.ItemIndex+1),Edit3.Text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1),Edit2.text,
                    2,True,CheckBox2.Checked,RadioButton5.Checked  );
  isCalcul:=False;
  //showMessage('Opération terminée');
end;

procedure TFParametr.SpeedButton11Click(Sender: TObject);
begin
  isCalcul:=True;
  FEtNvTVA.Imprimeo(Edit4.Text+'/'+FormatFloat('00',ComboBox2.ItemIndex+1),Edit3.Text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1),Edit2.text,2,
          False,CheckBox2.Checked,RadioButton5.Checked);
  Special.TParametr.Open;
  isCalcul:=False;
end;

procedure TFParametr.SpeedButton1Click(Sender: TObject);
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
  //AsehoyDocDonnee2('O_Compta',Commun.SocieteChemin.Value  ,Edit2.text,Entree);
end;

procedure TFParametr.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00D9B3FF;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);

end;

end.
