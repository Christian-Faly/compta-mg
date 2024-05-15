unit GranLivr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Db, Buttons, ExtCtrls, Qrctrls, quickrpt,
  ComCtrls, Mask, DBCtrls;

type
  TFGrandLivr = class(TForm)
    Label1: TLabel;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRBand2: TQRBand;
    QRShape16: TQRShape;
    QRBand4: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRDBText9: TQRDBText;
    QRShape8: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel202: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape10: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape19: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape14: TQRShape;
    QRShape23: TQRShape;
    QRLabel33: TQRLabel;
    QRShape24: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel8: TQRLabel;
    GroupBox3: TGroupBox;
    QRGroup2: TQRGroup;
    QRGroup3: TQRGroup;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label9: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    SpeedButton5: TSpeedButton;
    Fermer: TBitBtn;
    DataSource1: TDataSource;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape11: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape7: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape12: TQRShape;
    QRDBText62: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel17: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel28: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel36: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    CheckBox1: TCheckBox;
    QRBand1: TQRBand;
    CodeAnalytique: TCheckBox;
    QRLabel37: TQRLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Edit8: TEdit;
    Edit7: TEdit;
    CheckBox3: TCheckBox;
    RadioGroup1: TRadioGroup;
    CheckBox4: TCheckBox;
    QRLabel38: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand5: TQRBand;
    QRSysData7: TQRSysData;
    QRLabel49: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRDBText11: TQRDBText;
    QuickRep: TQuickRep;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape20: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape27: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape13: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape31: TQRShape;
    QRShape17: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape18: TQRShape;
    RadioGroup2: TRadioGroup;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    UpDown1: TUpDown;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    UpDown2: TUpDown;
    Label5: TLabel;
    Panel2: TPanel;
    MaskEdit1: TMaskEdit;
    Label11: TLabel;
    MaskEdit2: TMaskEdit;
    CheckBox5: TCheckBox;
    QRDBText1: TQRDBText;
    QRDBText40: TQRDBText;
    AN: TCheckBox;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel51: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel50: TQRLabel;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel52: TQRLabel;
    PasDeMvt: TCheckBox;
    QRBand6: TQRBand;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel53: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel55: TQRLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    procedure SpeedButton5Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FermerClick(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Edit3Change(Sender: TObject);
    procedure CodeAnalytiqueClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure RadioGroup2Click(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText16Print(sender: TObject; var Value: String);
  private
    { Déclarations privées }
    Mdebit,Mcredit:Int64;
    Total,TDebit,TCredit,TGDebit,TGCredit:real;
  public
    { Déclarations publiques }
    procedure Initialise;
    procedure Asehoy;
  end;

var
  FGrandLivr: TFGrandLivr;

procedure AsehoyGrandLivr;

implementation

uses Daspecia,DaCommun,  TypeElmt, ImpPlan, USQL, UPStocke;

{$R *.DFM}

procedure AsehoyGrandLivr;
begin
  try
    FGrandLivr:= TFGrandLivr.Create(Application);
    FGrandLivr.Asehoy;
  finally
    FGrandLivr.Free;
  end;
end;

procedure TFGrandLivr.Asehoy;
var year,Month,Day:word;
begin
  special.code_analytique.Open;
  width:=600;
  height:=300;
  AutoScroll:=false;
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  Edit4.text:=inttostr(Year);
  UpDown1.Position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);
  Edit1.text:=inttostr(Year);
  UpDown2.Position:=Year;
  ComboBox1.ItemIndex:=Month-1;
  Edit8.text:='';
  Edit3.text:='0';
  Edit6.text:='X';
  ShowModal;
end;

procedure TFGrandLivr.Initialise;
type
    mot=record
      pos:shortint;
      long:shortint;
    end;
    st10=string[10];
var    i,j,l,pos:word;
    vm:array[1..5]of mot;
    A:array[1..6]of st10;
    sq,text8,text7:string;
begin
  text8:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then text8:=text8+copy(Edit8.text,i,1);
  text7:='';
  for i:=1 to length(Edit7.text) do
    if copy(Edit7.text,i,1)<>',' then text7:=text7+copy(Edit7.text,i,1);
  PStockee.RSel1EltJrn.close;
  PStockee.RSel1EltJrn.SQL.Clear;
  if not CheckBox5.Checked then
    PStockee.RSel1EltJrn.SQL.Add('select * from Sel1EltJrn a')
  else
    PStockee.RSel1EltJrn.SQL.Add('select * from Sel1ReEltJrn a');
  PStockee.RSel1EltJrn.SQL.Add('where  (a.Compte>=:w) and (a.Compte<:x)');
  if RadioGroup2.ItemIndex=0 then
  begin
    PStockee.RSel1EltJrn.SQL.Add(' and (a.periode>=:y)');
    PStockee.RSel1EltJrn.SQL.Add('and (a.periode<=:z)');
  end
  else
    PStockee.RSel1EltJrn.SQL.Add(' and (a.DateEsc>=:y) and (a.DateEsc<=:z)');
  if not AN.Checked then
     PStockee.RSel1EltJrn.SQL.Add('and (a.CodeJrnx<>''AN'')');
  if CodeAnalytique.Checked then
     PStockee.RSel1EltJrn.SQL.Add('and (a.code_analytique='''+DBLookupComboBox1.keyValue+ ''')');

  if panel4.visible then
  begin
    i:=1;
    for j:=1 to 5 do begin vm[j].pos:=0;vm[j].long:=0; end;
    j:=1;
    pos:=1;
    while i<length(Edit8.text)+1 do
    begin
      if (copy(Edit8.text,i,1)<>'?')and(copy(Edit8.text,i,1)<>',') then
      begin
        vm[j].pos:=pos;
        l:=0;
        while (copy(Edit8.text,i+l,1)<>'?')and(copy(Edit8.text,i+l,1)<>',') do l:=l+1;
        vm[j].long:=l;i:=i+l;pos:=pos+l;
        ShowMessage(inttostr(vm[j].pos)+' '+inttostr(vm[j].long));
        j:=j+1;
      end
      else
      begin
        if copy(Edit8.text,i,1)<>',' then pos:=pos+1;
        i:=i+1;
      end;
    end;
    A[1]:='a.A1';A[2]:='a.A2';A[3]:='a.A3';A[4]:='a.A4';A[5]:='a.A5';A[6]:='a.A6';
    for j:=1 to 5 do
      if vm[j].pos>0 then
      begin
        sq:='';
        for i:=vm[j].pos  to vm[j].pos+vm[j].long-1 do
        if sq='' then sq:=sq+A[i]
        else sq:=sq+'+'+A[i];
        DASQL.Balance.SQL.Add('and ('+sq+'>='''+copy(text8,vm[j].pos,vm[j].long)+''') ');
        ShowMessage('and ('+sq+'>='''+copy(text8,vm[j].pos,vm[j].long)+''') ');
        DASQL.Balance.SQL.Add('and ('+sq+'<='''+copy(text7,vm[j].pos,vm[j].long)+''') ');
        ShowMessage('and ('+sq+'<='''+copy(text7,vm[j].pos,vm[j].long)+''') ');
      end;
  end;
  case RadioGroup1.ItemIndex of
    0: PStockee.RSel1EltJrn.SQL.Add('order by a.compte, a.periode, a.DateEsc,a.journal');
    1: PStockee.RSel1EltJrn.SQL.Add('order by a.compte, a.periode, a.Journal,a.DateEsc');
    2: PStockee.RSel1EltJrn.SQL.Add('order by a.compte, a.periode, a.NumFact');
  end;
  PStockee.RSel1EltJrn.Parameters[0].Value:=Edit3.text;
  PStockee.RSel1EltJrn.Parameters[1].Value:=Edit6.text+'ZZZZ';
  if RadioGroup2.ItemIndex=0 then
  begin
    if PasDeMvt.Checked  then
       PStockee.RSel1EltJrn.Parameters[2].Value:='0'
    else
       PStockee.RSel1EltJrn.Parameters[2].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
    PStockee.RSel1EltJrn.Parameters[3].Value:=edit1.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);;
  end
  else
  begin
    PStockee.RSel1EltJrn.Parameters[2].Value:=StrToDate(MaskEdit1.text);
    PStockee.RSel1EltJrn.Parameters[3].Value:=StrToDate(MaskEdit2.text);
  end;
  PStockee.RSel1EltJrn.open;
  if (PStockee.RSel1EltJrn.eof)and(not AN.Checked)then
  begin
    QRGroup3.Height:=0;
    DetailBand1.Height:=0;
    PasDeMvt.Checked:=true;
    AN.Checked:=True;
    QRBand2.Height:=0;
    QRBand6.Height:=57;
    Initialise;
  end;
end;

procedure TFGrandLivr.SpeedButton5Click(Sender: TObject);
var texte:string;
  i:integer;
begin
  texte:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then texte:=texte+copy(Edit8.text,i,1);
  //if (length(texte)<6)and panel4.visible then
  //begin
    //MessageDlg('Compléter le code analytique à 6 chiffre ou par ?',mtConfirmation,[mbOk],0);
    //exit;
  //end;
  PasDeMvt.Checked :=false;
  QRBand6.Height:=0;
  QuickRep1.preview;
end;

procedure TFGrandLivr.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var sdate,st:string;
begin
  if PStockee.RSel1EltJrnPeriode.Value<(edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1))then
  begin
    DetailBand1.Height:=0;
    QRLabel34.Caption:='                                                       ';
  end
  else
  begin
    if PasDeMvt.Checked then
      DetailBand1.Height:=0
    else
      DetailBand1.Height:=22;
    QRLabel34.Caption:='';
  end;
  if CheckBox3.checked then QRLabel5.Caption:=PStockee.RSel1EltJrnJournal.Value
  else QRLabel5.Caption:=copy(PStockee.RSel1EltJrnJournal.Value,5,4);
  sdate:=FormatFloat('00',PStockee.RSel1EltJrnJour.Value)+ '/'+
         copy(PStockee.RSel1EltJrnPeriode.Value,6,2){+ '/'+
          copy(DASQL.Sel1EltJrnPeriode.Value,3,2)};
  Total:=Total+PStockee.RSel1EltJrnMDebit.Value-PStockee.RSel1EltJrnMCredit.Value;
  {QRLabel24.Caption:=FormatFloat('# ##0',Total);}
                     {DASQL.Sel1EltJrnMDebit.Value-DASQL.Sel1EltJrnMCredit.Value);}
  TDebit:=TDebit+PStockee.RSel1EltJrnMDebit.Value;
  TCredit:=TCredit+PStockee.RSel1EltJrnMCredit.Value;
  st:=FormatDateTime('dd/mm/yy',PStockee.RSel1EltJrnDateEsc.Value);
  {QRLabel34.caption:=sdate; }
end;

procedure TFGrandLivr.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if PStockee.RSel1EltJrnPeriode.Value<(edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1))then
    QRBand2.Height:=0
  else
  begin
    if PasDeMvt.Checked then
      QRBand2.Height:=0
    else
      QRBand2.Height:=57;
  end;
  {QRLabel25.Caption:=FormatFloat('# ##0',Total);}
  QRLabel29.Caption:=FormatFloat('#,##0',TDebit);
  QRLabel30.Caption:=FormatFloat('#,##0',TCredit);
  TGDebit:=TGDebit+TDebit;
  TGCredit:=TGCredit+TCredit;

  if TGDebit >= TGCredit then
  begin
    QRLabel24.Caption:=FormatFloat('#,##0',TGDebit-TGCredit);
    QRLabel25.Caption:='';
    QRLabel26.Caption:='Solde débiteur';
  end
  else
  begin
    QRLabel24.Caption:='';
    QRLabel26.Caption:='Solde Créditeur';
    QRLabel25.Caption:=FormatFloat('#,##0',TGCredit-TGDebit);
  end;
  QRLabel39.Caption:=FormatFloat('#,##0',TGDebit);
  QRLabel46.Caption:=FormatFloat('#,##0',TGCredit);
  TDebit:=0;
  TCredit:=0;
  QRLabel22.caption:='Total Periode '+PStockee.RSel1EltJrnPeriode.Value;
end;

procedure TFGrandLivr.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {QRLabel26.Caption:=FormatFloat('# ##0',Total);}
  {QRLabel28.Caption:=FormatFloat('# ##0',TDebit);
  QRLabel27.Caption:=FormatFloat('# ##0',TCredit);}
end;

procedure TFGrandLivr.FermerClick(Sender: TObject);
begin
  close;
end;

procedure TFGrandLivr.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  {QRGroup2.Height:=0;
  QRBand2.Height:=0;}
end;

procedure TFGrandLivr.QRGroup3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var numb:integer;
begin
  if PStockee.RSel1EltJrnPeriode.Value<(edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1))then
  Begin
    QRGroup3.Height:=0;
    QRLabel14.Caption:='                                                       ';
  end
  else
  begin
    if PasDeMvt.Checked then
      QRGroup3.Height:=0
    else
      QRGroup3.Height:=88;
    QRLabel14.Caption:='';
  end;
  if PStockee.RSel1EltJrn.IsEmpty then
    DASQL.SoldeInitial(edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),
                       Edit3.text,edit3.text,TGDebit,TGCredit,AN.checked)
  else
  begin
    if RadioGroup2.ItemIndex=0 then
    begin
      DASQL.SoldeInitial(PStockee.RSel1EltJrnPeriode.Value,
                       PStockee.RSel1EltJrnCompte.Value,PStockee.RSel1EltJrnCompte.Value,
                       TGDebit,TGCredit,AN.checked);
    end
    else
    begin
      DASQL.SoldeInitialDate(StrToDate(MaskEdit1.Text),
                       PStockee.RSel1EltJrnCompte.Value,PStockee.RSel1EltJrnCompte.Value,
                       TGDebit,TGCredit);
    end;
  end;
  QRLabel44.Caption:=FormatFloat('#,##0',TGDebit);
  QRLabel43.Caption:=FormatFloat('#,##0',TGCredit);
  if TGDebit>=TGCredit then
  begin
    QRLabel19.Caption:=FormatFloat('#,##0',TGDebit-TGCredit);
    QRLabel23.Caption:='';
    QRLabel18.Caption:='Solde débiteur';
  end
  else
  begin
    QRLabel19.Caption:='';
    QRLabel23.Caption:=FormatFloat('#,##0',TGCredit-TGDebit);
    QRLabel18.Caption:='Solde créditeur';
  end;
  try
    numb:=strtoint(copy(PStockee.RSel1EltJrnPeriode.Value,6,2));
      QRLabel32.Caption:=Special.stmois[numb]+' '+copy(PStockee.RSel1EltJrnPeriode.Value,1,4);
  except
    On EconvertError do
      QRLabel32.Caption:=PStockee.RSel1EltJrnPeriode.Value;
  end;
end;

procedure TFGrandLivr.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  TGDebit:=0;
  TGCredit:=0;
  {edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1),}
end;

procedure TFGrandLivr.Edit3Change(Sender: TObject);
begin
  EDIT6.text:=edit3.text;
end;

procedure TFGrandLivr.CodeAnalytiqueClick(Sender: TObject);
begin
  Panel4.Visible:=CodeAnalytique.Checked;
end;

procedure TFGrandLivr.Edit8Change(Sender: TObject);
var texte:string;
  i:integer;
begin
  texte:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then texte:=texte+copy(Edit8.text,i,1);
  Commun.SelPostAnal.Close;
  Commun.SelPostAnal.Parameters[0].value:=texte;
  Commun.SelPostAnal.Open;
  QRLabel37.Caption:=Commun.SelPostAnalIntitule.Value ;
  edit7.text:=edit8.text;
end;

procedure TFGrandLivr.SpeedButton9Click(Sender: TObject);
var k:string;
begin
  if length(Edit1.text)>0 then
    AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false ,true)
  else
    AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit6.text:=Commun.TemponString1.Value;
end;

procedure TFGrandLivr.SpeedButton1Click(Sender: TObject);
var k:string;
begin
  if length(Edit1.text)>0 then
    AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false ,true)
  else
    AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit3.text:=Commun.TemponString1.Value;
  Edit6.text:=Commun.TemponString1.Value;
end;


procedure TFGrandLivr.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if CheckBox4.Checked then
  begin
    Special.GranLivr.Insert;
    Special.GranLivrCompte.Value:=PStockee.RSel1EltJrnCompte.Value;
    Special.GranLivrPeriode.Value:=PStockee.RSel1EltJrnPeriode.Value;{QRLabel32.Caption;}
    Special.GranLivrDaty.Value:= FormatDateTime('dd/mm/yyyy',PStockee.RSel1EltJrnDateEsc.Value);
    Special.GranLivrJx.Value:=PStockee.RSel1EltJrnCodeJrnx.Value;
    Special.GranLivrPiece.Value:=QRLabel5.Caption;
    Special.GranLivrContrePar.Value:=PStockee.RSel1EltJrnLContre.Value;
    Special.GranLivrLibelle.Value  := PStockee.RSel1EltJrnLibel2.Value;
    Special.GranLivrN_Fac.Value :=PStockee.RSel1EltJrnNumFact.Value;
    Special.GranLivrDebit.Value :=MDebit;
    Special.GranLivrCredit.Value:=MCredit;
    Special.GranLivr.Post;
  end;
  MDebit := 0;
  MCredit:= 0;
  QRLabel50.Caption:='';
  QRLabel51.Caption:='';
end;

procedure TFGrandLivr.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr9.Reset;
  QRExpr10.Reset;
  QRExpr6.Reset;
  QRExpr2.Reset;
  QRLabel50.Caption:='                                                                          ';
  QRLabel51.Caption:='                                                                          ';
end;

procedure TFGrandLivr.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then Panel2.Visible:=false
  else Panel1.Visible:=true;
end;

procedure TFGrandLivr.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var year1,year2,month,day:word;
  annee,y,m,d:word;
  dtfin:TDateTime;
begin
  if CheckBox4.Checked then
  begin
    PStockee.Operation1.close;
    PStockee.Operation1.SQL.Clear;
    PStockee.Operation1.SQL.Add('DELETE FROM granlivr');
    PStockee.Operation1.ExecSQL;
    Special.GranLivr.close;
    Special.GranLivr.open;

    //Special.GranLivr.Open;
    //While not Special.GranLivr.EOF do Special.GranLivr.delete;
  end;
  QRGroup2.ForceNewPage:=not CheckBox1.checked;
  {QRLabel20.Caption:='Ag:'+Commun.SocieteCode.Value;}
  Initialise;
  DecodeDate(Commun.SocieteExerDeb.Value,Year1,month,day);
  DecodeDate(Commun.SocieteExerFin.Value,Year2,month,day);
  Total:=0;
  TDebit:=0;
  TCredit:=0;
  DASQL.NumCompte.close;
  DASQL.NumCompte.SQL.Clear;
  DASQL.NumCompte.SQL.Add('select * from NumCpt');
  DASQL.NumCompte.SQL.Add('where (NumCpt=:a)');
  QRLabel41.Caption:='01'+'/'+formatfloat('00',ComboBox2.ItemIndex+1)+'/'+edit4.text;
  annee:=StrToInt(edit1.text);
  dtfin:=MetterFinMois(annee,ComboBox1.ItemIndex+1);
  DecodeDate(dtfin,y,m,d);
  QRLabel42.Caption:=FormatFloat('00',d)+'/'+formatfloat('00',ComboBox1.ItemIndex+1)+'/'+edit1.text;
  QRLabel51.Caption:='                                                                             ';
  QRLabel52.Caption:='                                                                             ';
end;

procedure TFGrandLivr.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel52.Caption:='';
end;

procedure TFGrandLivr.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel60.Caption:=FormatFloat('#,##0',TGDebit);
  QRLabel61.Caption:=FormatFloat('#,##0',TGCredit);
  if TGDebit >= TGCredit then
  begin
    QRLabel56.Caption:=FormatFloat('#,##0',TGDebit-TGCredit);
    QRLabel57.Caption:='';
    QRLabel58.Caption:='Solde débiteur';
  end
  else
  begin
    QRLabel56.Caption:='';
    QRLabel57.Caption:=FormatFloat('#,##0',TGCredit-TGDebit);
    QRLabel58.Caption:='Solde Créditeur';
  end;
  if PasDeMvt.Checked then
  begin
    QRLabel22.Caption:='';
    QRLabel29.Caption:='';
    QRLabel30.Caption:='';
    QRLabel35.Caption :='Report';
    AN.Checked:=false;
  end;
end;

procedure TFGrandLivr.QRDBText14Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(value,MDebit);
end;

procedure TFGrandLivr.QRDBText16Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(value,MCredit);
end;

end.
