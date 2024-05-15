unit lettrage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ExtCtrls, StdCtrls, Buttons, quickrpt, Qrctrls,
  ComCtrls,ADOdb, DBTables;

type
  TFLettrage = class(TForm)
    Panel1: TPanel;
    SourceRechLet: TDataSource;
    DBGrid1: TDBGrid;
    Journaux: TGroupBox;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    SpeedButton10: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton11: TSpeedButton;
    Edit3: TEdit;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BitBtn1: TBitBtn;
    SpeedButton12: TSpeedButton;
    SpeedButton14: TSpeedButton;
    CheckBox2: TCheckBox;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Edit7: TEdit;
    UpDown1: TUpDown;
    SpeedButton3: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit5: TEdit;
    SpeedButton9: TSpeedButton;
    SpeedButton19: TSpeedButton;
    RadioGroup3: TRadioGroup;
    DBGrid3: TDBGrid;
    CheckBox3: TCheckBox;
    Label7: TLabel;
    Edit4: TEdit;
    SpeedButton16: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton18: TSpeedButton;
    ADOTable1: TADOTable;
    Table1: TTable;
    DBGrid2: TDBGrid;
    DBGrid4: TDBGrid;
    DataSource2: TDataSource;
    procedure SpeedButton2Click(Sender: TObject);
    procedure QuickRep2BeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure RadioGroup2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Déclarations privées }
    reste:real;
    NoChange:boolean;
    totdebit,totcredit:real;
    avec:boolean;
    chemin:string;
    i_dernier:integer;
    procedure lettrageAuto;
    function DernierLettre:integer;
  public
    { Déclarations publiques }
    ip2:string;
    procedure Asehoy(typ:shortint;avecforce:boolean;ip,Tiers:string);
  end;

var
  FLettrage: TFLettrage;

procedure AsehoyLettrage(typ:shortint;avecforce:boolean;ip,codesoc,Tiers:string);export;

implementation

uses  UDaLettr, informat, TypeElmt, EtatLettre, ImpPlan;

{$R *.DFM}

procedure AsehoyLettrage(typ:shortint;avecforce:boolean;ip,codesoc,tiers:string);export;
begin
  try
    CreerDataTiers;
    ChangeCheminTiers(ip,codesoc);
    FLettrage:=TFLettrage.Create(Application);
    FLettrage.Asehoy(typ,avecforce,ip,Tiers);
  finally
    FLettrage.Free;
    VonoyDataTiers;
  end;
end;

procedure TFLettrage.Asehoy(typ:shortint;avecforce:boolean;ip,Tiers:string);
var dt:TDate;
    Year,Month,Day:word;
begin
  ip2:= ip;
  dt:=date;
  DecodeDate(dt,Year,Month,Day);
  Edit7.text:=inttostr(Year);
  UpDown1.Position:= Year;
  ComboBox2.ItemIndex:=Month-1;
  DataTiers.Tempon.Open;
  avec:=avecforce;
  NoChange:=false;
  SourceRechLet.DataSet:=DataTiers.RRechLet;
  edit1.text:='411';
  RadioGroup1.ItemIndex:=0;
  edit3.text:='ZZZZ';
  Edit2.text:='0';
  Edit5.text:='0';
  totdebit:=0;
  totcredit:=0;
  DataTiers.MettreIzyFalse.ExecSQL;
  DernierLettre;
  DBGrid1.Align:=AlClient;
  Autoscroll:=false;
  if Tiers<>'' then
    Edit1.Text:=Tiers;
  case typ of
    0:showmodal;
  end;
end;

procedure TFLettrage.lettrageAuto;
var i,k:longint;
  stpoint,lett,compte,NumFact,Periode:string;
  misy:boolean;
  nbpoint,total,derlet:integer;
  expr1:string;
begin
  CheckBox3.Checked:=False;
  FInformat:=TFInformat.Create(Application);
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  DataTiers.QLettrageAuto.Close;
  DataTiers.QLettrageAuto.Parameters[0].Value:=Edit1.text ;
  DataTiers.QLettrageAuto.Parameters[1].Value:=Edit1.text+'Z' ;
  DataTiers.QLettrageAuto.Open;
  total:=DataTiers.QLettrageAuto.RecordCount;
  i:=DataTiers.EquivIndex(edit3.text);
  DataTiers.QLettrageAuto.first;
  lett:=DataTiers.EquivLettre(i);
  DataSource1.DataSet:=DataTiers.QLettrageAuto;
  expr1:=DataTiers.QLettrageAutoExpr1.Value;
  while not DataTiers.QLettrageAuto.eof do
  begin
    while expr1=DataTiers.QLettrageAutoExpr1.Value do
    begin
      try
        DataTiers.lettrage.Insert;
        DataTiers.lettrageLettre.Value :=lett ;
        DataTiers.lettragePeriodeLet.Value :=Periode ;
        DataTiers.lettrageNumElt.Value :=DataTiers.QLettrageAutoNumero.Value ;
        DataTiers.lettrageTypeLet.Value :='Automat' ;
        DataTiers.lettrage.Post;
      except
        On EDataBaseError do
        begin
          DataTiers.lettrage.Cancel;
          CheckBox3.Checked:=True;
          //showMessage('Numéro '+IntTostr(DataTiers.QLettrageAutoNumero.Value)+
          //            'Lettre:'+lett+' - Facture et fournisseur:'+DataTiers.QLettrageAutoExpr1.Value);
        end;
      end;
      DataTiers.QLettrageAuto.Next;
      if DataTiers.QLettrageAuto.Eof then break;
    end;
    if DataTiers.QLettrageAuto.Eof then break;
    expr1:=DataTiers.QLettrageAutoExpr1.Value;
    lett:=DataTiers.EquivLettre(i+1);
    i:=i+1;
    //  Avancement
    FInformat.Show;
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for k:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:='Lettrage automatique '+inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
  end;

  DataTiers.lettrage.requery;
  DataTiers.RRechLet.requery;
  FInformat.Close;
  FInformat.free;
end;

procedure TFLettrage.SpeedButton2Click(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=3;
  i_dernier:=DernierLettre;
  LettrageAuto;
  DernierLettre;
end;

procedure TFLettrage.QuickRep2BeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  RadioGroup2.ItemIndex:=3;
  DataTiers.Ecriture.close;
  DataTiers.Ecriture.sql.clear;
  DataTiers.Ecriture.sql.Add('select * from Journal a, EltJrn b');
  DataTiers.Ecriture.sql.Add('where (b.Compte>=:x)and(b.Compte<=:y)');
  DataTiers.Ecriture.sql.Add('and (a.Periode<='''+edit7.text+'/'+
                              FormatFloat('00',ComboBox2.itemindex+1)+''')');
  DataTiers.Ecriture.sql.Add('and (a.Code=b.Journal)');
  case RadioGroup1.ItemIndex of
    0:begin
      DataTiers.Ecriture.sql.Add('and (b.Debit=''D'')');
      DataTiers.Ecriture.sql.Add('order by compte');
    end;
    1:begin
      DataTiers.Ecriture.sql.Add('and (b.Debit=''C'')');
      DataTiers.Ecriture.sql.Add('order by compte');
    end;
  end;
  DataTiers.Ecriture.close;
  DataTiers.Ecriture.parameters[0].Value:=Edit1.text;
  DataTiers.Ecriture.parameters[0].Value:=Edit1.text+'XX';
  DataTiers.Ecriture.open;
end;

procedure TFLettrage.SpeedButton6Click(Sender: TObject);
begin
  AsehoyLstCpt(Edit1.text,ip2,DataTiers.SocieteChemin.Value,false,true);
  {if length(Edit1.text)>0 then AsehoyLstCpt(Edit1.text,chemin ,false,AfakaPlan)
  else AsehoyLstCpt('60',chemin,false,AfakaPlan);}
  DataTiers.Tempon.requery;
  edit1.text:=DataTiers.TemponString1.Value;
end;

procedure TFLettrage.SpeedButton5Click(Sender: TObject);
var lett:string;
begin
  lett:=edit3.text;
  try
    DataTiers.lettrage.insert;
    DataTiers.lettrageNumElt.Value:=DataTiers.RRechLetNumero.Value;
    DataTiers.lettrageLettre.Value:=lett;
    DataTiers.lettrage.post;
  except
    On EDataBaseError do
    begin
      DataTiers.lettrage.cancel;
      lett:=DataTiers.RRechLetLettre.Value;
    end;
  end;
  DataTiers.RRechLet.Requery;
end;

procedure TFLettrage.SpeedButton8Click(Sender: TObject);
begin
  DataTiers.SuppLettrage.close;
  DataTiers.SuppLettrage.parameters[0].Value:=DataTiers.RRechLetLettre.Value;
  DataTiers.SuppLettrage.ExecSQL;
  DataTiers.lettrage.requery;
  DataTiers.RRechLet.requery;
  DernierLettre;
end;

procedure TFLettrage.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement délettrer tous ?',mtconfirmation,[mbYes,mbNo],0)=mryes then
  begin
    DataTiers.SuppToutLettre.ExecSQL;
    DataTiers.lettrage.requery;
    DataTiers.RRechLet.requery;
  end;
end;


procedure TFLettrage.SpeedButton9Click(Sender: TObject);
begin
  DataTiers.ListeNonValide.Open;
  DataTiers.ListeNonValide.Requery;
  if DataTiers.ListeNonValide.RecordCount>0 then
  begin
    if CheckBox3.Checked  then
    begin
      DataTiers.SupprimerLettreNonValide;
      close;
    end
    else
    begin
      DataSource1.DataSet:=DataTiers.ListeNonValide;
      Panel2.Visible:=true;
      CheckBox1.Checked :=true;
    end;
  end
  else
    Close;
end;

procedure TFLettrage.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  reste:=0;
end;


procedure TFLettrage.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {QRLabel18.Caption:=FormatFloat('#,##0',reste);}
end;


procedure TFLettrage.DataSource1DataChange(Sender: TObject; Field: TField);
begin
{  DataTiers.SuiviLet.Close;
  DataTiers.SuiviLet.params[0].AsString:=DataTiers.EcritureLettre.Value;
  case RadioGroup1.ItemIndex of
    0:DataTiers.SuiviLet.params[1].AsString:='C';
    1:DataTiers.SuiviLet.params[1].AsString:='D';
  end;
  DataTiers.SuiviLet.Open;}
end;

procedure TFLettrage.RadioGroup2Click(Sender: TObject);
begin
  SpeedButton10Click(Sender);
end;

procedure TFLettrage.SpeedButton10Click(Sender: TObject);
var i:integer;
begin
  Label7.Caption:='Nombre d''écriture ';
  DataTiers.RRechLet.close;
  DataTiers.RRechLet.SQL.clear;
  DataTiers.RRechLet.SQL.Add('Select * from Apurement a');
  DataTiers.RRechLet.sql.Add('where  (Numero>0)and(a.Periode<='''+edit7.text+'/'+
                         FormatFloat('00',ComboBox2.itemindex+1)+''')');
  DataTiers.RRechLet.SQL.Add('and (a.Compte>=:x)and(a.compte<=:y)');
  case RadioGroup2.ItemIndex of
    0:;//Tous
    1://Lettré
     begin
       DataTiers.RRechLet.SQL.Add('and (NumElt Is not Null)');
       Label7.Caption:=Label7.Caption+'léttrée(s)';
       DataTiers.RRechLet.SQL.Add('order by a.lettre, a.Compte, a.NumFact, a.montant, a.periode');
     end;
    2: // Non lettree
     begin
       DataTiers.RRechLet.SQL.Add('and (NumElt Is  Null)');
       Label7.Caption:=Label7.Caption+'non léttrée(s)';
       DataTiers.RRechLet.SQL.Add('order by a.Compte, a.dateEsc,a.periode, a.NumFact, a.montant');
     end;
    3: // Apurement
     begin
       DataTiers.RRechLet.SQL.Add('and ((NumElt Is  Null)or(lettre=''X'')or(lettre='' ''))');
       Label7.Caption:=Label7.Caption+'à apurée(s)';
       DataTiers.RRechLet.SQL.Add('order by a.Compte, a.dateEsc, a.NumFact, a.montant, a.periode');
     end;
  end;
  DataTiers.RRechLet.Parameters[0].Value:=Edit1.text;
  DataTiers.RRechLet.Parameters[1].Value:=Edit1.text+'ZZ';
  //showMessage('a='+Edit1.text+'ZZ');
  //for i:=0 to DataTiers.RRechLet.SQL.Count-1 do
    //showMessage(DataTiers.RRechLet.SQL[i]);
  DataTiers.RRechLet.open;
  Label7.Caption:=Label7.Caption+'='+IntToStr(DataTiers.RRechLet.RecordCount);
end;

function TFLettrage.DernierLettre:integer;
var i:longint;
begin
  DataTiers.RDernierLettre.Open;
  DataTiers.RDernierLettre.Requery;
  i:=DataTiers.EquivIndex(DataTiers.RDernierLettreDernier.Value);
  if i<0 then i:=0;
  edit3.text:=DataTiers.EquivLettre(i+1);
  result:=i;
end;

procedure TFLettrage.SpeedButton11Click(Sender: TObject);
begin
  DernierLettre;
end;

procedure TFLettrage.Edit1Change(Sender: TObject);
begin
  if copy(edit1.text,1,2)='40' then
  begin
    RadioGroup1.ItemIndex:=1;
    Label1.Caption:='Situation fournisseur';
    SpeedButton7.caption:='Fournisseur soldé';
  end;
  if copy(edit1.text,1,2)='41' then
  begin
    RadioGroup1.ItemIndex:=0;
    SpeedButton7.caption:='Client soldé';
    Label1.Caption:='Situation client';
  end;
  DataTiers.SelNumCpt.Close;
  DataTiers.SelNumCpt.parameters[0].Value:=Edit1.text;
  DataTiers.SelNumCpt.open;
  Label2.caption:=DataTiers.SelNumCptIntitule.Value;
end;

procedure TFLettrage.SpeedButton1Click(Sender: TObject);
begin
  if (Label1.Caption='Situation fournisseur') then
  begin
    RadioGroup1.ItemIndex:=1;
    RadioGroup2.ItemIndex:=2;
    SpeedButton10Click(Sender);
  end;
  if (Label1.Caption='Situation client') then
  begin
    RadioGroup1.ItemIndex:=0;
    RadioGroup2.ItemIndex:=2;
    SpeedButton10Click(Sender);
  end;
  try
    Application.CreateForm(TFEtatLettre, FEtatLettre);
    if  RadioGroup2.ItemIndex>1 then FEtatLettre.QuickRep2.Preview;
  finally
    FEtatLettre.free;
  end;
end;

procedure TFLettrage.SpeedButton12Click(Sender: TObject);
begin
  DataTiers.SuppLettrage.close;
  DataTiers.SuppLettrage.parameters[0].Value:=DataTiers.RRechLetLettre.Value;
  DataTiers.SuppLettrage.ExecSQL;

  totdebit:=0;totcredit:=0;
  edit2.text:='0';edit5.text:='0';
  DataTiers.RRechLet.requery;
end;


procedure TFLettrage.CheckBox1Click(Sender: TObject);
begin
  Panel2.Visible:=CheckBox1.checked;
end;


procedure TFLettrage.SpeedButton7Click(Sender: TObject);
begin
  try
    RadioGroup2.ItemIndex :=1;
    SpeedButton10Click(Sender);
    Application.CreateForm(TFEtatLettre, FEtatLettre);
    FEtatLettre.QuickRep3.Preview;
  finally
    FEtatLettre.free;
  end;
  NoChange:=True;
end;

procedure TFLettrage.SpeedButton17Click(Sender: TObject);
var oui:boolean;
  dtfin:TDateTime;
  y,m,d,annee:word;
  Periode:string;
begin
  RadioGroup2.ItemIndex :=2;
  SpeedButton10Click(Sender);
  Periode:= Edit7.text+'/'+FormatFloat('00',ComboBox2.itemindex+1);
  try
    Application.CreateForm(TFEtatLettre, FEtatLettre);
    Annee:=strtoint(Edit7.Text);
    //showMessage(inttostr(ComboBox2.ItemIndex+1));
    dtfin:=MetterFinMois(annee,ComboBox2.ItemIndex+1);
    DecodeDate(dtfin,y,m,d);
    FEtatLettre.QRLabel20.Caption:='Facture(s) impayée(s) au '+formatfloat('00',d)+'/'+formatfloat('00',ComboBox2.ItemIndex+1)+'/'+edit7.text;
    FEtatLettre.QuickRep1.Preview;
  finally
    FEtatLettre.free;
  end;
  NoChange:=false;
end;

procedure TFLettrage.SpeedButton19Click(Sender: TObject);
var mt:Real;
  mb,i:integer;
  stpoint,lettre,diff:string;
  total,nbpoint:integer;
begin
  FInformat:=TFInformat.Create(Application);
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  nbpoint:=0;
  DataTiers.TLettre.Open;
  DataTiers.TLettre.requery;
  DataTiers.TLettre.first;
  lettre:= DataTiers.TLettreLettre.Value;
  total:=DataTiers.TLettre.RecordCount;
  nbpoint:=0;
  while not DataTiers.TLettre.eof do
  begin
    Mt:=0;
    while (lettre= DataTiers.TLettreLettre.Value)
      and (not DataTiers.TLettre.EOF) do
    begin
      {ShowMessage(FormatFloat('0',DataTiers.SelLettrageMontant.Value));}
      if DataTiers.TLettreDebit.Value='D' then Mt:=Mt+DataTiers.TLettreTotal.Value
      else Mt:=Mt-DataTiers.TLettreTotal.Value;
      DataTiers.TLettre.Next;
      {Avancement}
      nbpoint:=nbpoint+1;
      if nbpoint>10 then stpoint:='';
      for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
      FInformat.caption:='Validation :'+inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    end;
    if Mt<>0 then
    begin
      DataTiers.SelLettrage.close;
      DataTiers.SelLettrage.parameters[0].Value:=lettre;
      DataTiers.SelLettrage.open;
      //ShowMessage('Non conformité trouvé. Réexecutez pour s''assurer');
      if RadioGroup3.ItemIndex=0 then
        while not DataTiers.SelLettrage.eof do DataTiers.SelLettrage.delete
      else
      begin
        DataTiers.Afficher.Close;
        DataTiers.Afficher.parameters[0].Value:=lettre;
        DataTiers.Afficher.open;
        if MessageDlg( 'Voulez-vous continuer? ',mtConfirmation,[mbYes,mbNo],0)= mrNo then
           break;
      end;
    end;
    lettre:= DataTiers.TLettreLettre.Value;
  end;
  DataTiers.TLettre.Requery;
  FInformat.close;
  FInformat.free;
end;

procedure TFLettrage.SpeedButton4Click(Sender: TObject);
var bm:TBookMark;
begin
  if RadioGroup2.ItemIndex<>3 then
  begin
    MessageDlg('Choisir le mode apurement avant de poursuivre',mtError,[mbok],0);
    exit;
  end;
  DataTiers.MAJIzy.Close;
  DataTiers.MAJIzy.Parameters[0].Value := DataTiers.RRechLetNumero.Value;
  DataTiers.MAJIzy.Open;
  if DataTiers.MAJIzyNumero.Value =0 then
  begin
    showMessage('Impossible de lettrer les Reports');
    exit;
  end;
  if DataTiers.MAJIzy.RecordCount >1 then
  begin
    showMessage('Double Numero:'+DataTiers.RRechLetNUmero.AsString +' '+DataTiers.RRechLetJournal.Value );
    exit;
  end;
  DataTiers.MAJIzy.Edit;
  if DataTiers.MAJIzyIzy.Value='0' then
    DataTiers.MAJIzyIzy.Value:='-1'
  else
    DataTiers.MAJIzyIzy.Value:='0';
  DataTiers.MAJIzy.Post;
  bm:=DataTiers.RRechLet.GetBookmark;
  DataTiers.RRechLet.Requery;
  DataTiers.RRechLet.GotoBookmark(bm);
  DataTiers.RRechLet.FreeBookmark(bm);
  DataTiers.RCalculIzy.Open;
  DataTiers.RCalculIzy.Requery ;
  edit2.text:=FormatFloat('#,##0',DataTiers.RCalculIzyMDebit.Value);
  edit5.text:=FormatFloat('#,##0',DataTiers.RCalculIzyMCredit.Value);
end;

procedure TFLettrage.BitBtn1Click(Sender: TObject);
var periode:string;
begin
  periode:='';
  if (length(edit2.text)>0)and(edit2.text=edit5.text) then
  begin
    DataTiers.RElementIzy.Open;
    DataTiers.RElementIzy.Requery;
    DataTiers.RElementIzy.First;
    while not DataTiers.RElementIzy.eof do
    begin
      if DataTiers.RElementIzyPeriode.Value>periode then
        periode:=DataTiers.RElementIzyPeriode.Value;
      DataTiers.RElementIzy.Next;
    end;
    DataTiers.RLettrageManuel.Parameters[0].Value:=Edit3.Text;
    DataTiers.RLettrageManuel.Parameters[1].Value:=Periode;
    DataTiers.RLettrageManuel.Parameters[2].Value:='Manuel';
    DataTiers.RLettrageManuel.ExecSQL;
    DataTiers.MettreIzyFalse.ExecSQL;
    DataTiers.lettrage.requery;
    DataTiers.RRechLet.requery;
    //SpeedButton10Click(Sender);
  end
  else MessageDlg('Lettrage non valide',mterror,[mbok],0);
  SpeedButton12Click(Sender);
  DernierLettre;
end;

procedure TFLettrage.DBGrid1DblClick(Sender: TObject);
begin
  SpeedButton4Click(Sender);
end;

procedure TFLettrage.SpeedButton14Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEtatLettre, FEtatLettre);
    DataTiers.EltLettree.Close;
    DataTiers.EltLettree.SQL.Clear;
    DataTiers.EltLettree.SQL.Add('Select * from  journal a, eltjrn b, lettrage c');
    DataTiers.EltLettree.SQL.Add('where (a.code=b.journal) and (c.NumElt=b.numero)');
    DataTiers.EltLettree.sql.Add('and (a.Periode<='''+edit7.text+'/'+
                              FormatFloat('00',ComboBox2.itemindex+1)+''')');
    DataTiers.EltLettree.SQL.Add('and (b.Compte>=:x)and(b.compte<=:y)');
    DataTiers.EltLettree.SQL.Add('order by b.Compte, c.lettre , b.Debit, a.periode');
    DataTiers.EltLettree.parameters[0].Value:=Edit1.text;
    DataTiers.EltLettree.parameters[1].Value:=Edit1.text+'Z';
    DataTiers.EltLettree.open;
    IF DataTiers.EltLettree.EOF then ShowMessage('Aucun élément') ;
    FEtatLettre.QuickRep4.Preview;
  finally
    FEtatLettre.free;
  end;
end;

procedure TFLettrage.FormShow(Sender: TObject);
begin
  if not ChargerPlan then
    MessageDlg('Impossible de charger ''PlanCpta.dll''',mtError,[mbok],0);
  RadioGroup2.ItemIndex:=3;
  if Edit1.text<>'411' then
    SpeedButton10Click(Sender);
end;

procedure TFLettrage.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=32 then SpeedButton4Click(Sender);
  if Key=13 then BitBtn1Click(Sender);
end;

procedure TFLettrage.SpeedButton15Click(Sender: TObject);
var periode:string;
  stPoint,lettre:string;
  i0,nbpoint,total:integer;
begin
  try
    Application.CreateForm(TFInformat,FInformat);
    FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
    DataTiers.RechPeriode.Open;
    total:=DataTiers.RechPeriode.RecordCount;
    DataTiers.RechPeriode.First;
    lettre:= DataTiers.RechPeriodeLettre.Value;
    while not DataTiers.RechPeriode.Eof do
    begin
      nbpoint:=nbpoint+1;
      if nbpoint>10 then
      stpoint:='';
      for i0:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
      FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
      Periode:='';
      While (not DataTiers.RechPeriode.EOF)and
            (DataTiers.RechPeriodeLettre.Value = lettre) do
      begin
        nbpoint:=nbpoint+1;
        if Periode<DataTiers.RechPeriodePeriode.value then
          Periode:=DataTiers.RechPeriodePeriode.value;
        DataTiers.RechPeriode.Next;
      end;
      //if DataTiers.RechPeriode.EOF then break;
      // Periode devient valeur maximal;
      DataTiers.ModifPeriode.Close;
      DataTiers.ModifPeriode.Parameters[0].Value:=lettre;
      DataTiers.ModifPeriode.Open;
      While not DataTiers.ModifPeriode.EOF do
      begin
        DataTiers.ModifPeriode.Edit;
        DataTiers.ModifPeriodePeriodeLet.value:=Periode;
        DataTiers.ModifPeriode.Post;
        DataTiers.ModifPeriode.Next;
      end;
      lettre:=DataTiers.RechPeriodeLettre.Value;
      //DataTiers.RechPeriode.Next;
    end;
  finally
    FInformat.Free;
  end;
end;

procedure TFLettrage.SpeedButton13Click(Sender: TObject);
begin
  ShowMessage(IntToStr(DataTiers.EquivIndex(edit3.text)));
end;

procedure TFLettrage.SpeedButton16Click(Sender: TObject);
begin
  ShowMessage(DataTiers.EquivLettre(StrToInt(Edit4.Text )));
end;

procedure TFLettrage.SpeedButton18Click(Sender: TObject);
var i:integer;
begin
  {DataTiers.NumeroNouvElt.Open;
  DataTiers.NumeroNouvElt.requery;
  i:=0;
  DataTiers.doublonsEltJrn.Open;
  DataTiers.doublonsEltJrn.first;
  showMessage(IntToStr(DataTiers.doublonsEltJrn.recordcount));
  while not DataTiers.doublonsEltJrn.EOF do
  begin
    showMessage(inttostr(i));
    DataTiers.doublonsEltJrn.Edit;
    DataTiers.doublonsEltJrnNumero.Value:=DataTiers.NumeroNouvEltNum.Value +i;
    DataTiers.doublonsEltJrn.Post;
    DataTiers.doublonsEltJrn.Next;
    i:=i+1;
  end;
  }
end;

procedure TFLettrage.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00FFFF80;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);

end;

procedure TFLettrage.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00FFFF80;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);

end;

end.
