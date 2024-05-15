unit EtaFinan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, Buttons, ExtCtrls, DBTables;

type
  TFEtatFinan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    SourceConsolide: TDataSource;
    CheckBox1: TCheckBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    choix: TRadioGroup;
    RadioGroup1: TRadioGroup;
    SpeedButton7: TSpeedButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Edit3: TEdit;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    SpeedButton5: TSpeedButton;
    Table1: TTable;
    Table2: TTable;
    BatchMove1: TBatchMove;
    RadioGroup2: TRadioGroup;
    Edit4: TEdit;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    CheckBox2: TCheckBox;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Edit5: TEdit;
    SpeedButton4: TSpeedButton;
    Verification: TTable;
    VerificationCOMPTE: TStringField;
    ListBox1: TListBox;
    ZeroSiVide: TQuery;
    CompleterZero: TQuery;
    CompleterZeroCOMPTE: TStringField;
    CompleterZeroDEBIT1: TFloatField;
    ZeroSiVideDebutCpt: TStringField;
    SpeedButton8: TSpeedButton;
    procedure choixClick(Sender: TObject);
    procedure SourceConsolideDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Déclarations privées }
    ndf:string;
    N_Soc:integer;
  public
    { Déclarations publiques }
    procedure CalculResultat(FichierOrig,CmptResult:string);
    procedure Asehoy;
  end;

var
  FEtatFinan: TFEtatFinan;

implementation

uses EtaBilanActif, EtaEFAut, DaCommun, Daspecia, InitCharge, informat,
  USQL;

{$R *.DFM}

procedure TFEtatFinan.Asehoy;
begin
  SourceConsolide.DataSet := Commun.SelSociete1;
  Edit1.text:=Commun.SelSociete1Chemin.value+'\Consolid';
  choix.ItemIndex :=0;
  RadioGroup1.ItemIndex :=0;
  SourceConsolide.DataSet := Commun.SelSociete1;
  Edit2.text:=Commun.SelSociete1Chemin.Value+'\'+ndf;
  Edit3.text:=Commun.SelSociete1CheminPrec.Value+'\'+ndf;
  N_Soc:=0;
  ShowModal;
end;

procedure TFEtatFinan.choixClick(Sender: TObject);
begin
  case choix.ItemIndex of
    0:
      begin
        SourceConsolide.DataSet := Commun.SelSociete1;
        if length(Commun.SelSociete1Chemin.Value)>0 then
          Edit2.text:=Commun.SelSociete1Chemin.Value+'\'+ndf
        else
          Edit2.text:='c:\CSC\Log\Exec\Compta\Data\'+ndf;
        Edit3.text:=Commun.SelSociete1CheminPrec.Value+'\'+ndf;
        N_Soc:=0;
      end;
    1:
      begin
        SourceConsolide.DataSet:=Commun.Consolide;
        if length(Commun.ConsolideChemin.Value)>0 then
          Edit2.text:=Commun.ConsolideChemin.Value+'\'+ndf
        else
          Edit2.text:='c:\CSC\Log\Exec\Compta\Data\'+ndf;
        Edit3.text:=Commun.ConsolideCheminPrec.Value+'\'+ndf;
      end;
  end;
end;

procedure TFEtatFinan.SourceConsolideDataChange(Sender: TObject;
  Field: TField);
begin
  if SourceConsolide.DataSet = Commun.Consolide  then
    N_Soc:=Commun.Consolide.RecNo
  else
    N_Soc:=0;
  Edit2.text:=Commun.ConsolideChemin.Value+'\'+ndf;
  if length(Commun.ConsolideCheminPrec.Value)>0 then
    Edit3.text:=Commun.ConsolideCheminPrec.Value+'\'+ndf
  else
    Edit3.text:='c:\CSC\Log\Exec\Compta\Data\'+ndf;
end;

procedure TFEtatFinan.SpeedButton5Click(Sender: TObject);
begin
  OpenDialog1.FileName := Edit1.text;
  if OpenDialog1.Execute then Edit1.text :=OpenDialog1.FileName;
  ZeroSiVide.Open;
  while not ZeroSiVide.Eof do
  begin
    CompleterZero.Close;
    CompleterZero.SQL.Clear;
    CompleterZero.SQL.Add('select * from '''+OpenDialog1.FileName +'''');
    CompleterZero.SQL.Add('where compte=:a ');
    CompleterZero.ParamByName('a').AsString:=ZeroSiVideDebutCpt.Value;
    CompleterZero.OPen;
    if CompleterZero.Eof then
    begin
      CompleterZero.Edit;
      CompleterZeroCompte.Value:=ZeroSiVideDebutCpt.Value;
      CompleterZero.Post;
    end;
    ZeroSiVide.Next;
  end;
end;

procedure TFEtatFinan.SpeedButton6Click(Sender: TObject);
begin
  SaveDialog1.FileName := Edit2.text;
  if SaveDialog1.Execute then Edit2.text :=SaveDialog1.FileName;
end;

procedure TFEtatFinan.SpeedButton7Click(Sender: TObject);
var expr,somme,Expr_:string;
  expr0,expr1,expr2,expr3,expr4,expr5,expr6,expr7:string;
  modeCalc:shortint;
begin
  if (RadioGroup1.ItemIndex =0) or (RadioGroup1.ItemIndex =2) then
  begin
    Somme:= 'Sum(ParamEF.Debit1-ParamEF.Credit1+ParamEF.Debit2-ParamEF.Credit2+ParamEF.Debit3-ParamEF.Credit3+ParamEF.Debit4-ParamEF.Credit4+'+
          'ParamEF.Debit5-ParamEF.Credit5+ParamEF.Debit6-ParamEF.Credit6+ParamEF.Debit7-ParamEF.Credit7)';
  end
  else
  begin
    Somme:= 'Sum(ParamEF.Credit1-ParamEF.Debit1+ParamEF.Credit2-ParamEF.Debit2+ParamEF.Credit3-ParamEF.Debit3+ParamEF.Credit4-ParamEF.Debit4+'+
          'ParamEF.Credit5-ParamEF.Debit5+ParamEF.Credit6-ParamEF.Debit6+ParamEF.Credit7-ParamEF.Debit7)';
  end;
  Expr0:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,'+somme+'),'+somme+')';
  if (RadioGroup1.ItemIndex =0) or (RadioGroup1.ItemIndex =2) then
  begin
    Expr1:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit1-ParamEF.Credit1)),Sum(ParamEF.Debit1-ParamEF.Credit1))';
    Expr2:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit2-ParamEF.Credit2)),Sum(ParamEF.Debit2-ParamEF.Credit2))';
    Expr3:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit3-ParamEF.Credit3)),Sum(ParamEF.Debit3-ParamEF.Credit3))';
    Expr4:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit4-ParamEF.Credit4)),Sum(ParamEF.Debit4-ParamEF.Credit4))';
    Expr5:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit5-ParamEF.Credit5)),Sum(ParamEF.Debit5-ParamEF.Credit5))';
    Expr6:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit6-ParamEF.Credit6)),Sum(ParamEF.Debit6-ParamEF.Credit6))';
    Expr7:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Debit7-ParamEF.Credit7)),Sum(ParamEF.Debit7-ParamEF.Credit7))';
  end
  else
  begin
    Expr1:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit1-ParamEF.Debit1)),Sum(ParamEF.Credit1-ParamEF.Debit1))';
    Expr2:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit2-ParamEF.Debit2)),Sum(ParamEF.Credit2-ParamEF.Debit2))';
    Expr3:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit3-ParamEF.Debit3)),Sum(ParamEF.Credit3-ParamEF.Debit3))';
    Expr4:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit4-ParamEF.Debit4)),Sum(ParamEF.Credit4-ParamEF.Debit4))';
    Expr5:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit5-ParamEF.Debit5)),Sum(ParamEF.Credit5-ParamEF.Debit5))';
    Expr6:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit6-ParamEF.Debit6)),Sum(ParamEF.Credit6-ParamEF.Debit6))';
    Expr7:='IF(ParamEF.Utilisation=0,IF('+somme+'<0,0,Sum(ParamEF.Credit7-ParamEF.Debit7)),Sum(ParamEF.Credit7-ParamEF.Debit7))';
  end;
  case N_Soc of
    0:{Consolidé}  Expr :=Expr0;
    1:{Societe 1}  Expr :=Expr1;
    2:{Societe 2}  Expr :=Expr2;
    3:{Societe 3}  Expr :=Expr3;
    4:{Societe 4}  Expr :=Expr4;
    5:{Societe 5}  Expr :=Expr5;
    6:{Societe 6}  Expr :=Expr6;
    7:{Societe 7}  Expr :=Expr7;
  end;
  case N_Soc of
    0:{Consolidé}  Expr_ :='Sum(ParamEF.TotMontant)';
    1:{Societe 1}  Expr_ :='Sum(ParamEF.Montant1)';
    2:{Societe 2}  Expr_ :='Sum(ParamEF.Montant2)';
    3:{Societe 3}  Expr_ :='Sum(ParamEF.Montant3)';
    4:{Societe 4}  Expr_ :='Sum(ParamEF.Montant4)';
    5:{Societe 5}  Expr_ :='Sum(ParamEF.Montant5)';
    6:{Societe 6}  Expr_ :='Sum(ParamEF.Montant6)';
    7:{Societe 7}  Expr_ :='Sum(ParamEF.Montant7)';
  end;

  {if not FileExists(Edit2.text) then
  begin
    Table2.DatabaseName := ExtractFilePath(Edit2.text);
    Table2.TableName    := ExtractFileName(Edit2.text);
    BatchMove1.execute;
  end;

  if not FileExists(Edit3.text) then
  begin
    ShowMessage(Edit3.text+' n''existe pas.');
    Edit3.text:='c:\CSC\Log\Exec\Compta\Data\'+ndf;
    Existe:=false;
  end;
  if existe then
  try
    DASQL.BilanAct_1.Close;
    DASQL.BilanAct_1.SQL.clear;
    DASQL.BilanAct_1.SQL.Add('select * from '''+Edit3.text+''' ');
    DASQL.BilanAct_1.Open;
  except
    On EDataBaseError do
    begin
      ShowMessage('Fichier précedent non comptatible');
      exit;
    end;
  end; }

  if CheckBox2.Checked then CalculResultat(Edit1.text,Edit4.text); //
  modeCalc:=RadioGroup2.ItemIndex;
  if  RadioGroup1.ItemIndex=0 then
    ImprimerBilanActif(choix.ItemIndex ,N_Soc,strtoint(edit5.text),expr_,expr,edit1.text,edit3.text,edit2.text,edit4.Text )
  else
    ImprimerEFAutre(choix.ItemIndex,RadioGroup1.ItemIndex,N_Soc,strtoint(edit5.text),expr_,expr,
       edit1.text,edit3.text,edit2.text,edit4.Text,CheckBox1.checked,modecalc);
end;

procedure TFEtatFinan.CalculResultat(FichierOrig,CmptResult:string);
var stResultat:string;
begin
  stResultat:= 'SELECT Sum(Credit1) as RDebit1, Sum(Debit1) as RCredit1, ' +
                       'Sum(Credit2) as RDebit2, Sum(Debit2) as RCredit2, ' +
                       'Sum(Credit3) as RDebit3, Sum(Debit3) as RCredit3, ' +
                       'Sum(Credit4) as RDebit4, Sum(Debit4) as RCredit4, ' +
                       'Sum(Credit5) as RDebit5, Sum(Debit5) as RCredit5, ' +
                       'Sum(Credit6) as RDebit6, Sum(Debit6) as RCredit6, ' +
                       'Sum(Credit7) as RDebit7, Sum(Debit7) as RCredit7, ' +
                       'Sum(Credit8) as RDebit8, Sum(Debit8) as RCredit8, ' +
                       'Sum(Credit9) as RDebit9, Sum(Debit9) as RCredit9 ' +
                       'FROM '''+FichierOrig+''' '  +
                       'where (compte>''6'') and (compte<''7Z'')';
  DASQL.QCalculResultat.Close;
  DASQL.QCalculResultat.SQL.Clear;
  DASQL.QCalculResultat.SQL.Add(stResultat);
  DASQL.QCalculResultat.Open;
  DASQL.SelConsolid.Close;
  DASQL.SelConsolid.SQL.Clear;
  DASQL.SelConsolid.SQL.Add('Select * from ');
  DASQL.SelConsolid.SQL.Add(''''+FichierOrig+''' ');
  DASQL.SelConsolid.SQL.Add('where compte=:a');

  DASQL.SelConsolid.Close;
  DASQL.SelConsolid.Parameters[0].Value:=CmptResult;
  DASQL.SelConsolid.Open;

  DASQL.SelConsolid.Edit;
  DASQL.SelConsolidCompte.Value:=CmptResult;
  //Société n°1
  if DASQL.QCalculResultatRDebit1.Value>DASQL.QCalculResultatRCredit1.Value then
  begin
    DASQL.SelConsolidDebit1.Value := DASQL.QCalculResultatRDebit1.Value - DASQL.QCalculResultatRCredit1.Value;
    DASQL.SelConsolidCredit1.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit1.Value := DASQL.QCalculResultatRCredit1.Value - DASQL.QCalculResultatRDebit1.Value;
    DASQL.SelConsolidDebit1.Value:= 0;
  end;
  //Société n°2
  if DASQL.QCalculResultatRDebit2.Value>DASQL.QCalculResultatRCredit2.Value then
  begin
    DASQL.SelConsolidDebit2.Value := DASQL.QCalculResultatRDebit2.Value - DASQL.QCalculResultatRCredit2.Value;
    DASQL.SelConsolidCredit2.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit2.Value := DASQL.QCalculResultatRCredit2.Value - DASQL.QCalculResultatRDebit2.Value;
    DASQL.SelConsolidDebit2.Value:= 0;
  end;
  //Société n°3
  if DASQL.QCalculResultatRDebit3.Value>DASQL.QCalculResultatRCredit3.Value then
  begin
    DASQL.SelConsolidDebit3.Value := DASQL.QCalculResultatRDebit3.Value - DASQL.QCalculResultatRCredit3.Value;
    DASQL.SelConsolidCredit3.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit3.Value := DASQL.QCalculResultatRCredit3.Value - DASQL.QCalculResultatRDebit3.Value;
    DASQL.SelConsolidDebit3.Value:= 0;
  end;
  //Société n°4
  if DASQL.QCalculResultatRDebit4.Value>DASQL.QCalculResultatRCredit4.Value then
  begin
    DASQL.SelConsolidDebit4.Value := DASQL.QCalculResultatRDebit4.Value - DASQL.QCalculResultatRCredit4.Value;
    DASQL.SelConsolidCredit4.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit4.Value := DASQL.QCalculResultatRCredit4.Value - DASQL.QCalculResultatRDebit4.Value;
    DASQL.SelConsolidDebit4.Value:= 0;
  end;
  //Société n°5
  if DASQL.QCalculResultatRDebit5.Value>DASQL.QCalculResultatRCredit5.Value then
  begin
    DASQL.SelConsolidDebit5.Value := DASQL.QCalculResultatRDebit5.Value - DASQL.QCalculResultatRCredit5.Value;
    DASQL.SelConsolidCredit5.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit5.Value := DASQL.QCalculResultatRCredit5.Value - DASQL.QCalculResultatRDebit5.Value;
    DASQL.SelConsolidDebit5.Value:= 0;
  end;
  //Société n°6
  if DASQL.QCalculResultatRDebit6.Value>DASQL.QCalculResultatRCredit6.Value then
  begin
    DASQL.SelConsolidDebit6.Value := DASQL.QCalculResultatRDebit6.Value - DASQL.QCalculResultatRCredit6.Value;
    DASQL.SelConsolidCredit6.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit6.Value := DASQL.QCalculResultatRCredit6.Value - DASQL.QCalculResultatRDebit6.Value;
    DASQL.SelConsolidDebit6.Value:= 0;
  end;
  //Société n°7
{  if DASQL.QCalculResultatRDebit7.Value>DASQL.QCalculResultatRCredit7.Value then
  begin
    DASQL.SelConsolidDebit7.Value := DASQL.QCalculResultatRDebit7.Value - DASQL.QCalculResultatRCredit7.Value;
    DASQL.SelConsolidCredit7.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit7.Value := DASQL.QCalculResultatRCredit7.Value - DASQL.QCalculResultatRDebit7.Value;
    DASQL.SelConsolidDebit7.Value:= 0;
  end;
  //Société n°8
  if DASQL.QCalculResultatRDebit8.Value>DASQL.QCalculResultatRCredit8.Value then
  begin
    DASQL.SelConsolidDebit8.Value := DASQL.QCalculResultatRDebit8.Value - DASQL.QCalculResultatRCredit8.Value;
    DASQL.SelConsolidCredit8.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit8.Value := DASQL.QCalculResultatRCredit8.Value - DASQL.QCalculResultatRDebit8.Value;
    DASQL.SelConsolidDebit8.Value:= 0;
  end;
  //Société n°9
  if DASQL.QCalculResultatRDebit9.Value>DASQL.QCalculResultatRCredit9.Value then
  begin
    DASQL.SelConsolidDebit9.Value := DASQL.QCalculResultatRDebit9.Value - DASQL.QCalculResultatRCredit9.Value;
    DASQL.SelConsolidCredit9.Value:= 0;
  end
  else
  begin
    DASQL.SelConsolidCredit9.Value := DASQL.QCalculResultatRCredit9.Value - DASQL.QCalculResultatRDebit9.Value;
    DASQL.SelConsolidDebit9.Value:= 0;
  end;
  }
  DASQL.SelConsolid.Post;
end;

procedure TFEtatFinan.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.FileName := Edit3.text;
  if OpenDialog1.Execute then Edit3.text :=OpenDialog1.FileName;
end;

procedure TFEtatFinan.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:begin
        ndf:='BilanAct';
        SpeedButton3.visible:=false;
      end;
    1:begin
        ndf:='BilanPas';
        SpeedButton3.visible:=false;
      end;
    2:begin
        ndf:='ResulCha';
        SpeedButton3.visible:=true;
      end;
    3:begin
        ndf:='ResulPro';
        SpeedButton3.visible:=false;
      end;
  end;
  case choix.ItemIndex of
    0:
    begin
      Edit2.text:=Commun.SelSociete1Chemin.Value+'\'+ndf;
      Edit3.text:=Commun.SelSociete1CheminPrec.Value+'\'+ndf;
    end;
    1:
    begin
      Edit2.text:=Commun.ConsolideChemin.Value+'\'+ndf;
      Edit3.text:=Commun.ConsolideCheminPrec.Value+'\'+ndf;
    end;
  end;
end;

procedure TFEtatFinan.SpeedButton3Click(Sender: TObject);
begin
  FInitCha.Asehoy(Edit3.text);
  //Edit3.text:=Special.TInitCha.DataBaseName+Special.TInitCha.TableName;
end;

procedure TFEtatFinan.SpeedButton4Click(Sender: TObject);
var hita:boolean;
    nbpoint,i,total:integer;
    stpoint:string;
begin
  nbpoint:=0;
  ListBox1.Items.Clear;
  Verification.Close;
  Verification.TableName := Edit1.Text;
  Verification.Open;
  special.GroupCpt.Open;
  FInformat.Asehoy('Vérification ',' PATIENTEZ...',1000000);
  Verification.First;
  Total:=Verification.RecordCount;
  while not Verification.EOF do
  begin
     {------------Affichage Avancement------------}
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
      {----------Fin affichage avancement---------}
    Hita:=false;
    special.GroupCpt.First;
    while not special.GroupCpt.EOF do
    begin
      if((
          (special.GroupCptDebutCpt.Value<=VerificationCompte.value+'Z')
         and(special.GroupCptFinCompte.Value+'Z'>=VerificationCompte.value))
      or((special.GroupCptProDebut.Value>'0')
         and(special.GroupCptProDebut.Value<=VerificationCompte.value+'Z')
         and (special.GroupCptProFin.Value+'Z'>=VerificationCompte.value))
      or((special.GroupCptAmDebut.Value>'0')
         and(special.GroupCptAmDebut.Value<=VerificationCompte.value+'Z')
         and (special.GroupCptAmFin.Value+'Z'>=VerificationCompte.value))) then
      begin
        Hita:=true;
        Break;
      end;
      special.GroupCpt.Next;
    end;
    if not hita then ListBox1.Items.Add(VerificationCompte.value);
    Verification.Next;
  end;
  FInformat.Close;
end;

procedure TFEtatFinan.SpeedButton8Click(Sender: TObject);
begin
  try
    FEtaBilanActif:=TFEtaBilanActif.create(Application);
    FEtaBilanActif.Asehoy;
  finally
    FEtaBilanActif.Free;
  end;
end;

end.
