unit Groupe;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Buttons, Grids, DBGrids, DBTables, ExtCtrls,
  dialogs, Qrctrls, quickrpt, ComCtrls;

type
  TFGroupe = class(TForm)
    SourceGroupe: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel9: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label8: TLabel;
    SpeedButton19: TSpeedButton;
    Edit9: TEdit;
    Edit10: TEdit;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    Label10: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    DBGrid4: TDBGrid;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    BitBtn2: TBitBtn;
    SourceTitre: TDataSource;
    Panel1: TPanel;
    RadioGroup2: TRadioGroup;
    SourceParaEF: TDataSource;
    SpeedButton18: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    Panel4: TPanel;
    Label6: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label9: TLabel;
    Label1: TLabel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    SpeedButton28: TSpeedButton;
    CheckBox1: TCheckBox;
    SourceEF: TDataSource;
    CheckBox3: TCheckBox;
    SpeedButton29: TSpeedButton;
    RadioGroup1: TRadioGroup;
    RadioGroup3: TRadioGroup;
    CheckBox5: TCheckBox;
    Panel5: TPanel;
    Label7: TLabel;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    Edit8: TEdit;
    Edit13: TEdit;
    RadioGroup4: TRadioGroup;
    Label11: TLabel;
    SpeedButton27: TSpeedButton;
    CheckBox7: TCheckBox;
    Panel6: TPanel;
    Label15: TLabel;
    SpeedButton30: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    Edit15: TEdit;
    Edit16: TEdit;
    DBGrid5: TDBGrid;
    CheckBox9: TCheckBox;
    SSouSouTi: TDataSource;
    Edit14: TEdit;
    SourceUnion: TDataSource;
    CheckBox10: TCheckBox;
    SourceSSTitre: TDataSource;
    OpenDialog1: TOpenDialog;
    RadioGroup5: TRadioGroup;
    Edit17: TEdit;
    Edit18: TEdit;
    SpeedButton41: TSpeedButton;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox20: TCheckBox;
    procedure SourceGroupeDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SourceUnionDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SourceTitreDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SourceSSTitreDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SourceParaEFDataChange(Sender: TObject; Field: TField);
    procedure RadioGroup2Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure QRExpr14Print(sender: TObject; var Value: String);
    procedure QRExpr15Print(sender: TObject; var Value: String);
    procedure QRExpr16Print(sender: TObject; var Value: String);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand6AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SSouSouTiDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
  private
    { Déclarations privées }
    NoChange:boolean;
    SAmPro,AmProUnion,AmProSSTitre,AmProTitre:real;
    procedure diovy;
    procedure RaisoGroupe(ajout:boolean);
    procedure RaisoUnion(ajout:boolean);
    procedure RaisoTitre(ajout:boolean);
    procedure RaisoSouTitre(ajout:boolean);
    procedure RaisoSouSouTi(ajout:boolean);
    //function  CalculeExpression(Expression:String):real;
  public
    { Déclarations publiques }
    procedure Asehoy;
  end;

var
  FGroupe: TFGroupe;

implementation

uses Daspecia, DaCommun, GranLivr, LstTitre, TypeElmt, ImpPlan, USQL;

{$R *.DFM}

procedure TFGroupe.Asehoy;
begin
  Autoscroll:=false;
  Windowstate:=WsMaximized;
  NoChange:=false;
  SourceGroupe.DataSet:=special.GroupCpt;
  SourceUnion.DataSet:=special.UnionCp;
  special.TypePara.Open;
  special.Titre.Open;
  special.SSTitre.Open;
  special.SouSouTi.Open;
  special.UnionCp.Open;
  special.GroupCpt.Open;
  RadioGroup2.ItemIndex:=0;
  //Special.ChangeChemin(Commun.SocieteCheminPrec.Value);
  ShowModal;
end;

procedure TFGroupe.diovy;
begin
  edit1.text:='';
  edit2.text:='';
  edit4.text:='';
  edit5.text:='';
  edit6.text:='';
  edit7.text:='';
  edit1.setfocus;
  CheckBox7.Checked:=false;
  RadioGroup5.ItemIndex:=0;
end;

{function TFGroupe.CalculeExpression(Expression:String):real;
var l,i,k:integer;
  Numero:longint;
   montant:real;
   stNumero,sql:String;
begin
  {expression:=enleveBlanc(Expression);
  Montant:=0;
  i:=1;
  l:=length(Expression);
  while i<=l do
  begin
    if (copy(Expression,i,1)='T')or (copy(Expression,i,1)='S')or
       (copy(Expression,i,1)='U')or(copy(Expression,i,1)='U') then //Table=titre
    begin
      k:=1;
      StNumero:='';
      while ('0'<=copy(Expression,i+k,1))and(copy(Expression,i+k,1)<='9') do
      begin
        StNumero:=StNumero+copy(Expression,i+k,1);
        k:=k+1;
      end;
      Numero:=strtoint(StNumero);
      if (copy(Expression,i,1)='T') then
        sql:='select * from Titre where numero=:a';
      if (copy(Expression,i,1)='S') then
        sql:='select * from SousTitr where numero=:a';
      if (copy(Expression,i,1)='U') then
        sql:='select * from UnionCp where numero=:a';
      if (copy(Expression,i,1)='G') then
        sql:='select * from GroupCpt where numero=:a';
      DASQL.ExpTotal.Close;
      DASQL.ExpTotal.SQL.Clear;
      DASQL.ExpTotal.SQL.Add(sql);
      DASQL.ExpTotal.parameters[0].Value:=Numero;
      DASQL.ExpTotal.Open;
      if (i=1) or (copy(Expression,i-1,1)='+') then
        Montant:=Montant+DASQL.ExpTotalTotal.Value
      else
        if (copy(Expression,i-1,1)='-') then
          Montant:=Montant-DASQL.ExpTotalTotal.Value;
      i:=i+k;
    end
    else
      i:=i+1;
  end;
  showmessage(FloatTostr(DASQL.ExpTotalTotal.Value));
  result:=Montant;
end;
}

procedure TFGroupe.RaisoTitre(ajout:boolean);
begin
  NoChange:=true;
  if ajout then special.Titre.Insert
  else special.Titre.Edit;
  try
    special.TitreTypa.Value:=RadioGroup2.ItemIndex;
    special.TitreRang.Value:=Edit10.Text;
    special.TitreIntitule.Value:=Edit9.Text;
    if CheckBox3.Checked then
      special.TitreDetailT.Value:= -1
    else
      special.TitreDetailT.Value:= 0;
    if CheckBox12.Checked then
      special.TitreEF.Value:=-1
    else
      special.TitreEF.Value:=0;

    if CheckBox13.Checked then
      special.TitreAnnexe.Value:=-1
    else
      special.TitreAnnexe.Value:=0;
    if CheckBox4.Checked then
      special.TitreSaut.Value:=-1
    else
      special.TitreSaut.Value:=0;
    special.Titre.Post;
  except
    On EDataBaseError do
    begin
      Application.MessageBox('Ce code existe déjà','Erreur de saisie', mb_OK);
      special.Titre.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFGroupe.RaisoSouTitre(ajout:boolean);
begin
  NoChange:=true;
  if ajout then special.SSTitre.Insert
  else special.SSTitre.Edit;
  try
    special.SSTitreTitre.Value:=special.TitreNumero.Value;
    special.SSTitreRang.Value:=Edit12.Text;
    special.SSTitreIntitule.Value:=Edit11.Text;
    if CheckBox1.Checked then
      special.SSTitreDetail.Value:=-1
    else
      special.SSTitreDetail.Value:=0;
    if CheckBox14.Checked then
      special.SSTitreEF.Value:=-1
    else
      special.SSTitreEF.Value:=0;
    if CheckBox15.Checked then
      special.SSTitreAnnexe.Value:=-1
    else
      special.SSTitreAnnexe.Value:=0;
    if CheckBox6.Checked then
      special.SSTitreSaut.Value:=-1
    else
      special.SSTitreSaut.Value:=0;
    if RadioGroup2.ItemIndex<4 then special.SSTitreExpr.Value:=''
    else special.SSTitreExpr.Value:=Edit8.text;
    special.SSTitre.Post;
  except
    On EDataBaseError do
    begin
      Application.MessageBox('Ce code existe déjà','Erreur de saisie', mb_OK);
      special.SSTitre.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFGroupe.RaisoSouSouTi(ajout:boolean);
begin
  NoChange:=true;
  if ajout then special.SouSouTi.Insert
  else special.SouSouTi.Edit;
  try
    special.SouSouTiSouTitre.Value:=special.SSTitreNumero.Value;
    special.SouSouTiRang.Value:=Edit16.Text;
    special.SouSouTiIntitule.Value:=Edit15.Text;

    if CheckBox9.Checked then
      special.SouSouTiDetail.Value:=-1
    else
      special.SouSouTiDetail.Value:=0;

    if CheckBox16.Checked then
      special.SouSouTiEF.Value:=-1
    else
      special.SouSouTiEF.Value:=0;

    if CheckBox17.Checked then
      special.SouSouTiAnnexe.Value:=-1
    else
      special.SouSouTiAnnexe.Value:=0;

    if CheckBox8.Checked then
      special.SouSouTiSaut.Value:=-1
    else
      special.SouSouTiSaut.Value:=0;
    special.SouSouTi.Post;
  except
    On EDataBaseError do
    begin
      Application.MessageBox('Ce code existe déjà','Erreur de saisie', mb_OK);
      special.SouSouTi.cancel;
    end;
  end;
  NoChange:=false;
end;


procedure TFGroupe.RaisoUnion(ajout:boolean);
begin
  NoChange:=true;
  if ajout then special.UnionCp.insert
  else special.UnionCp.edit;
  try
    special.UnionCpSSTitre.value:=special.SouSouTiNumero.Value;
    special.UnionCpRang.value:=Edit17.Text;
    special.UnionCpIntitule.value:=edit3.text;
    if CheckBox18.Checked then
      special.UnionCpEF.Value:=-1
    else
      special.UnionCpEF.Value:=0;
    if CheckBox11.Checked then
      special.UnionCpDeciderGroupe.Value:=-1
    else
      special.UnionCpDeciderGroupe.Value:=0;
    if CheckBox19.Checked then
      special.SouSouTiSaut.Value:=-1
    else
      special.SouSouTiSaut.Value:=0;
    special.UnionCp.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Ce code existe déjà','Erreur de saisie', mb_OK);
      special.UnionCp.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFGroupe.RaisoGroupe(ajout:boolean);
var debut,fin:string;
begin
  debut:=edit1.text;
  fin:=edit2.text;
  {if length(debut)<>length(fin) then
  begin
    MessageDlg('Le numéro de compte doît être de même niveau:'
                +inttostr(length(debut))+'-'+inttostr(length(fin)),MtError,[MbOk],0);
    exit;
  end;
  l:=length(debut);
  if not((l>1)and(copy(debut,1,l-1)=copy(fin,1,l-1)))then
  begin
    MessageDlg('Le numéro de compte doît être de même classe '
               +copy(debut,1,l-1)
               +'  '+copy(fin,1,l-1),MtError,[MbOk],0);
    exit;
  end;}
  NoChange:=true;
  if ajout then special.GroupCpt.insert else special.GroupCpt.edit;
  try
    special.GroupCptUnionCp.value:=special.UnionCpNumero.Value;
    special.GroupCptDebutCpt.value:=Debut;
    if CheckBox7.Checked then
      special.GroupCptAffichDet.value:= -1
    else
      special.GroupCptAffichDet.value:= 0;
    if CheckBox10.Checked then
      special.GroupCptChiffres5.value:= -1
    else
      special.GroupCptChiffres5.value:= 0;
    special.GroupCptLeDetail.value:=RadioGroup5.ItemIndex;
    special.GroupCptFinCompte.value:=Fin;
    special.GroupCptAmDebut.value:=edit4.text;
    special.GroupCptIntitGroup.value:=edit14.text;
    special.GroupCptRang.value:=edit18.text;
    special.GroupCptAmFin.value:=edit5.text;
    special.GroupCptProDebut.value:=edit6.text;
    special.GroupCptProFin.value:=edit7.text;
    if RadioGroup2.ItemIndex<2 then special.GroupCptTypSomme.Value:=2
    else special.GroupCptTypSomme.Value:=RadioGroup1.ItemIndex;
    special.GroupCptUtilisation.Value:=RadioGroup3.ItemIndex;
    if RadioGroup2.ItemIndex<4 then
      special.GroupCptAjouter.Value:= -1
    else
    begin
      if CheckBox5.Checked then
        special.GroupCptAjouter.Value:=-1
      else
        special.GroupCptAjouter.Value:=0
    end;
    if CheckBox2.Checked then
      special.GroupCptEF.Value:= -1
    else
      special.GroupCptEF.Value:= 0;
    if CheckBox20.Checked then
      special.GroupCptZeroSiVide.Value:= -1
    else
      special.GroupCptZeroSiVide.Value:= 0;
    special.GroupCpt.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Ce code existe déjà','Erreur de saisie', mb_OK);
      special.GroupCpt.cancel;
    end;
  end;
  NoChange:=false;
end;


procedure TFGroupe.SourceGroupeDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  edit1.text:=special.GroupCptDebutCpt.value;
  CheckBox7.Checked:= (special.GroupCptAffichDet.value<>0);
  RadioGroup5.ItemIndex:=special.GroupCptLeDetail.value;
  CheckBox10.Checked:=(special.GroupCptChiffres5.value<>0);
  edit2.text:=special.GroupCptFinCompte.value;
  edit4.text:=special.GroupCptAmDebut.value;
  edit5.text:=special.GroupCptAmFin.value;
  edit6.text:=special.GroupCptProDebut.value;
  edit7.text:=special.GroupCptProFin.value;
  edit14.text:=special.GroupCptIntitGroup.value;
  edit18.text:=special.GroupCptRang.value;
  RadioGroup1.ItemIndex:=special.GroupCptTypSomme.Value;
  RadioGroup3.ItemIndex:=special.GroupCptUtilisation.Value;
  CheckBox5.Checked:= (special.GroupCptAjouter.Value<>0);
  CheckBox20.Checked:= (special.GroupCptZeroSiVide.Value<>0);
  CheckBox2.Checked:= (special.GroupCptEF.Value<>0);
end;

procedure TFGroupe.SpeedButton1Click(Sender: TObject);
begin
  diovy;
end;

procedure TFGroupe.SpeedButton2Click(Sender: TObject);
begin
  RaisoGroupe(true);
end;

procedure TFGroupe.SpeedButton3Click(Sender: TObject);
begin
  RaisoGroupe(false);
end;

procedure TFGroupe.SpeedButton4Click(Sender: TObject);
begin
  if Application.MessageBox(' Voulez-vous vraiement le supprimmer ?',
         'Confirmation', mb_YesNo)=IDYES then special.GroupCpt.delete;
end;


procedure TFGroupe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceGroupe.DataSet:=Special.Repos;
end;

procedure TFGroupe.SpeedButton6Click(Sender: TObject);
var code:string;
 st1,st2:String;
 k:string;
 l:integer;
begin
  Edit4.text:='';
  Edit5.text:='';
  Edit6.text:='';
  Edit7.text:='';
  if length(Edit1.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  code:=Commun.TemponString1.Value;
  Edit1.text:=code;
  Edit2.text:=code;
  l:=length(edit1.text);
  st1:=copy(edit1.text,1,1);
  st2:=copy(edit1.text,1,1);
  if (st1='2')then
  begin
    st1:=st1+'8';
    st1:=st1+copy(edit1.text,2,l);
    edit4.text:=st1;
    edit5.text:=st1;
  end;
  if (st2='2')or (st2='3')or(st2='4')or(st2='5')then
  begin
    st2:=st2+'9';
    st2:=st2+copy(edit1.text,2,l);
    edit6.text:=st2;
    edit7.text:=st2;
  end;
end;

procedure TFGroupe.SpeedButton7Click(Sender: TObject);
var  code:string;
 st1,st2:String;
 k:string;
 l:integer;
begin
  if length(Edit2.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  code:=Commun.TemponString1.Value;
  Commun.Tempon.requery;
  code:=Commun.TemponString1.Value;
  Edit2.text:=code;
  Edit3.text:='';
  l:=length(edit2.text);
  st1:=copy(edit2.text,1,1);
  st2:=copy(edit2.text,1,1);
  if (st1='2')then
  begin
    st1:=st1+'8';
    st1:=st1+copy(edit2.text,2,l);
    edit5.text:=st1;
  end;
  if (st2='2')or (st2='3')or(st2='4')or(st2='5')then
  begin
    st2:=st2+'9';
    st2:=st2+copy(edit2.text,2,l);
    edit7.text:=st2;
  end;
  l:=length(edit2.text);
  st2:=copy(edit2.text,1,1);
  if (st2='2')or (st2='3')or(st2='4')or(st2='5')then
  begin
    st2:=st2+'9';
    st2:=st2+copy(edit2.text,2,l);
    edit7.text:=st2;
  end;
end;


procedure TFGroupe.SpeedButton10Click(Sender: TObject);
var code:string;
 k:string;
begin
  if length(Edit4.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  code:=Commun.TemponString1.Value;
  Commun.Tempon.requery;
  code:=Commun.TemponString1.Value;
  Edit4.text:=code;
  Edit5.text:=code;
end;

procedure TFGroupe.SpeedButton11Click(Sender: TObject);
var k:string;
begin
  if length(Edit5.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit5.text:=Commun.TemponString1.Value;
end;


procedure TFGroupe.SpeedButton12Click(Sender: TObject);
var k:string;
begin
  if length(Edit6.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit6.text:=Commun.TemponString1.Value;
  Edit7.text:=Commun.TemponString1.Value;
end;

procedure TFGroupe.SpeedButton13Click(Sender: TObject);
var k:string;
begin
  if length(Edit7.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit7.text:=Commun.TemponString1.Value;
end;

procedure TFGroupe.SourceUnionDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  edit3.text:=special.UnionCpIntitule.value;
  edit17.text:=special.UnionCpRang.value;

  CheckBox18.Checked := (special.UnionCpEF.Value<>0);
  CheckBox11.Checked:= (special.UnionCpDeciderGroupe.Value<>0);
  CheckBox19.Checked:= (special.UnionCpAnnexe.Value<>0);
end;

procedure TFGroupe.SpeedButton14Click(Sender: TObject);
begin
  edit3.text:='';
  edit17.text:='';
end;

procedure TFGroupe.SpeedButton15Click(Sender: TObject);
begin
  RaisoUnion(true);
end;

procedure TFGroupe.SpeedButton16Click(Sender: TObject);
begin
  RaisoUnion(false);
end;

procedure TFGroupe.SpeedButton17Click(Sender: TObject);
begin
  special.GroupCpt.first;
  if special.GroupCpt.eof then
  begin
    if Application.MessageBox(' Voulez-vous vraiement le supprimmer ?',
         'Confirmation', mb_YesNo)=IDYES then special.UnionCp.delete;
  end
  else
    Application.MessageBox(' On ne peut pas supprimer une union non vides',
         'Confirmation', mb_Ok);
end;

procedure TFGroupe.SourceTitreDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  Edit10.Text:=special.TitreRang.Value;
  Edit9.Text:=special.TitreIntitule.Value;
  CheckBox3.Checked  := (special.TitreDetailT.Value<>0);
  CheckBox12.Checked := (special.TitreEF.Value<>0);
  CheckBox13.Checked := (special.TitreAnnexe.Value<>0);
  CheckBox4.Checked  := (special.TitreSaut.Value<>0)
end;

procedure TFGroupe.SpeedButton9Click(Sender: TObject);
begin
  Edit10.Text:='';
  Edit9.Text:='';
end;
            {dfsdfsdf}
procedure TFGroupe.SourceSSTitreDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  Edit12.Text:=special.SSTitreRang.Value;
  Edit11.Text:=special.SSTitreIntitule.Value;
  Edit8.Text:=special.SSTitreExpr.Value;
  CheckBox1.Checked  := (special.SSTitreDetail.Value<>0);
  CheckBox14.Checked := (special.SSTitreEF.Value<>0);
  CheckBox15.Checked := (special.SSTitreAnnexe.Value<>0);
  CheckBox6.Checked  := (special.SSTitreSaut.Value<>0);
end;

procedure TFGroupe.SpeedButton21Click(Sender: TObject);
begin
  Edit12.Text:='';
  Edit11.Text:='';
end;


procedure TFGroupe.SpeedButton8Click(Sender: TObject);
begin
  RaisoTitre(true);
end;

procedure TFGroupe.SpeedButton19Click(Sender: TObject);
begin
  RaisoTitre(false);
end;

procedure TFGroupe.SpeedButton5Click(Sender: TObject);
begin
  special.SSTitre.first;
  if special.SSTitre.eof then
  begin
    if MessageDlg('Voulez vous vraiement supprimer ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      special.Titre.Delete;
  end
  else
    Application.MessageBox(' On ne peut pas supprimer un titre non vides',
         'Confirmation', mb_Ok);
end;

procedure TFGroupe.SpeedButton22Click(Sender: TObject);
begin
  special.SouSouTi.first;
  if special.SouSouTi.eof then
  begin
    if MessageDlg('Voulez vous vraiement supprimer ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      special.SSTitre.Delete;
  end
  else
    Application.MessageBox(' On ne peut pas supprimer un sous titre non vides',
         'Confirmation', mb_Ok);
end;

procedure TFGroupe.SpeedButton20Click(Sender: TObject);
begin
  RaisoSouTitre(true);
end;

procedure TFGroupe.SpeedButton23Click(Sender: TObject);
begin
  RaisoSouTitre(false);
end;

procedure TFGroupe.SourceParaEFDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  RadioGroup2.ItemIndex:=special.TypeParaNumero.Value-1;
end;

procedure TFGroupe.RadioGroup2Click(Sender: TObject);
var i:word;
begin
  case RadioGroup2.ItemIndex of
    0:RadioGroup3.Items[1]:='Strict. créditeur';
    1:RadioGroup3.Items[1]:='Strict. debiteur';
    2:RadioGroup3.Items[1]:='Strict. créditeur';
    3:RadioGroup3.Items[1]:='Strict. debiteur';
  end;
  if RadioGroup2.ItemIndex>0 then Panel4.Visible:=false
  else Panel4.Visible:=TRUE;
  NoChange:=true;
  special.TypePara.First;
  for i:=1 to RadioGroup2.ItemIndex do special.TypePara.Next;
  NoChange:=false;
  special.Titre.requery;
  special.SSTitre.requery;
  special.UnionCp.requery;
  special.GroupCpt.requery;
  Case RadioGroup2.ItemIndex of
    0:{Bilan Actif}
    begin
      Panel4.Visible:=True;
      RadioGroup4.Visible:=True;
      Panel5.Visible:=false;
      CheckBox5.Visible:=false;
      RadioGroup1.Visible:=false;
    end;
    1:{Bilan Passif}
    begin
      RadioGroup4.Visible:=false;
      Panel4.Visible:=false;
      Panel5.Visible:=false;
      CheckBox5.Visible:=false;
      RadioGroup1.Visible:=false;
    end;
    2:{Compte de résultat Charge}
    begin
      RadioGroup4.Visible:=false;
      Panel4.Visible:=false;
      Panel5.Visible:=false;
      CheckBox5.Visible:=false;
      RadioGroup1.Visible:=true;
    end;
    3:{Compte de resultat Produit}
    begin
      RadioGroup4.Visible:=false;
      Panel4.Visible:=false;
      Panel5.Visible:=false;
      CheckBox5.Visible:=false;
      RadioGroup1.Visible:=true;
    end;
    4:{Tableau de grandeur caractéristique ede gestion}
    begin
      RadioGroup4.Visible:=false;
      Panel4.Visible:=false;
      Panel5.Visible:=true;
      CheckBox5.Visible:=true;
      RadioGroup1.Visible:=true;
    end;
    5:{Tableau de financement}
    begin
      RadioGroup4.Visible:=false;
      Panel4.Visible:=false;
      Panel5.Visible:=true;
      CheckBox5.Visible:=true;
      RadioGroup1.Visible:=true;
    end;
  end;
end;

procedure TFGroupe.SpeedButton18Click(Sender: TObject);
begin
  NoChange:=false;
  special.Titre.requery;
end;


procedure TFGroupe.SpeedButton24Click(Sender: TObject);
begin
  NoChange:=false;
  special.SSTitre.requery;
end;


procedure TFGroupe.SpeedButton25Click(Sender: TObject);
begin
  NoChange:=false;
  special.UnionCp.requery;
end;

procedure TFGroupe.SpeedButton26Click(Sender: TObject);
begin
  NoChange:=false;
  special.GroupCpt.requery;
end;

procedure TFGroupe.QRExpr14Print(sender: TObject; var Value: String);
var valeur:double;
begin
  if AvadihoReal(value,valeur) then value:=FormatFloat('#,##0',valeur-SAmPro)
  else value:='E:'+value;
end;

procedure TFGroupe.QRExpr15Print(sender: TObject; var Value: String);
var valeur:double;
begin
  if AvadihoReal(value,valeur) then value:=FormatFloat('#,##0',valeur-SAmPro)
  else value:='E:'+value;
end;

procedure TFGroupe.QRExpr16Print(sender: TObject; var Value: String);
var valeur:double;
begin
  if AvadihoReal(value,valeur) then value:=FormatFloat('#,##0',valeur-SAmPro)
  else value:='E:'+value;
end;

procedure TFGroupe.Edit1Change(Sender: TObject);
begin
  edit2.text:=edit1.text;
  if copy(edit1.text,1,1)='2' then
    edit4.text:=copy(edit1.text,1,1)+'8'+copy(edit1.text,2,length(edit1.text));
  if (copy(edit1.text,1,1)>'1')and((copy(edit1.text,1,1)<'6')) then
    edit6.text:=copy(edit1.text,1,1)+'9'+copy(edit1.text,2,length(edit1.text));
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Edit1.text;
  DASQL.SelNumCpt.open;
  Edit14.text:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFGroupe.Edit2Change(Sender: TObject);
begin
  if copy(edit2.text,1,1)='2' then
    edit5.text:=copy(edit2.text,1,1)+'8'+copy(edit2.text,2,length(edit2.text));
  if (copy(edit2.text,1,1)>'1')and((copy(edit2.text,1,1)<'6')) then
    edit7.text:=copy(edit2.text,1,1)+'9'+copy(edit2.text,2,length(edit2.text));
end;

procedure TFGroupe.Edit4Change(Sender: TObject);
begin
  if edit4.text='' then edit5.text:='';
end;

procedure TFGroupe.Edit6Change(Sender: TObject);
begin
  if edit6.text='' then edit7.text:='';
end;

procedure TFGroupe.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  AmProUnion:=0;
end;

procedure TFGroupe.QRBand6AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  AmProSSTitre:=0;
end;

procedure TFGroupe.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  AmProTitre:=0;
end;

procedure TFGroupe.SpeedButton33Click(Sender: TObject);
begin
  Edit8.text:=edit8.text+'+';
end;

procedure TFGroupe.SpeedButton34Click(Sender: TObject);
begin
  Edit8.text:=edit8.text+'-';
end;

procedure TFGroupe.SpeedButton36Click(Sender: TObject);
var l:integer;
begin
  l:=length(edit8.text);
  Edit8.text:=copy(edit8.text,1,l-1);
end;

procedure TFGroupe.SpeedButton30Click(Sender: TObject);
begin
  RaisoSouSouTi(true);
end;

procedure TFGroupe.SpeedButton39Click(Sender: TObject);
begin
  RaisoSouSouTi(false);
end;

procedure TFGroupe.SpeedButton38Click(Sender: TObject);
begin
  special.UnionCp.first;
  if special.UnionCp.eof then
  begin
    if MessageDlg('Voulez vous vraiement supprimer ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      special.SouSouTi.Delete;
  end
  else
    Application.MessageBox(' On ne peut pas supprimer un sous titre non vides',
         'Confirmation', mb_Ok);
end;

procedure TFGroupe.SSouSouTiDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  Edit16.Text:=special.SouSouTiRang.Value;
  Edit15.Text:=special.SouSouTiIntitule.Value;
  CheckBox9.Checked:=(special.SouSouTiDetail.Value<>0);
  CheckBox16.Checked:=(special.SouSouTiEF.Value<>0);
  CheckBox17.Checked:=(special.SouSouTiAnnexe.Value<>0);
  CheckBox8.Checked:=(special.SouSouTiSaut.Value<>0);
end;

procedure TFGroupe.SpeedButton37Click(Sender: TObject);
begin
  EDIT15.text:='';
  EDIT16.text:='';
  Edit1.text:='';
  Edit4.text:='';
end;

procedure TFGroupe.SpeedButton41Click(Sender: TObject);
begin
  edit18.text:=edit1.text;

end;

end.
