unit SelPerio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, ExtCtrls, Db, Grids, DBGrids, DBTables;

type
  TFSelPerio = class(TForm)
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    Mois: TLabel;
    Annee: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    UpDown2: TUpDown;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    UpDown1: TUpDown;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    BatchMove1: TBatchMove;
    Exemple: TTable;
    Consolid: TTable;
    SpeedButton7: TSpeedButton;
    BatchMove2: TBatchMove;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    CheckBox3: TCheckBox;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBGrid2: TDBGrid;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Déclarations privées }
    TDebit, TCredit:array[0..5,1..10]of REAL;
  public
    { Déclarations publiques }
    procedure Asehoy;
  end;

var
  FSelPerio: TFSelPerio;

implementation

uses DaCommun, Daspecia, BalAnn_1, informat, ColCons, ImprCons, 
  TypeElmt, USQL, ImprCons6;

{$R *.DFM}

procedure TFSelPerio.Asehoy;
var Year,month,day:word;
begin
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  UpDown2.Position:=Year;
  ComboBox1.ItemIndex:=Month-1;
  DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);
  UpDown1.Position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  DASQL.Qconsolidee.close;
  DASQL.Qconsolidee.Parameters[0].Value:=Commun.SocieteCode.Value;
  DASQL.Qconsolidee.Open;
  ShowModal;
end;

procedure TFSelPerio.SpeedButton2Click(Sender: TObject);
var compte,intitule:string;
  i,j:integer;
  stPoint:string;
  i0,nbpoint,total:integer;
begin
  DASQL.SelectParam('CONSOLID','NONCOMPENS');
  Special.Consolid.Close;
  SaveDialog1.InitialDir:=Commun.SocieteChemin.Value;
  SaveDialog1.FileName:='consolid';
  if not SaveDialog1.Execute then exit;
  Exemple.DatabaseName:=ExtractFilePath(SaveDialog1.FileName);
  Exemple.TableName:=ExtractFileName(SaveDialog1.FileName);
  BatchMove1.execute;

  Special.Consolid.TableName:=ExtractFileName(SaveDialog1.FileName);
  DASQL.BalConCo.Close;
  DASQL.BalConCo.SQL.Clear;
  DASQL.BalConCo.SQL.Add('select * from Journal a, EltJrn b');
  DASQL.BalConCo.SQL.Add('where (a.code=b.journal)and (a.periode>=:x)and(a.periode<=:y)');
  DASQL.BalConCo.SQL.Add('order by b.compte');
  DASQL.BalConCo.Parameters[0].Value:=Edit3.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);
  DASQL.BalConCo.Parameters[1].Value:=Edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);;
  DASQL.BalConCo.Open;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  total:=DASQL.BalConCo.RecordCount;
  Special.Consolid.open;
  Special.Consolid.first;
  While not Special.Consolid.eof do Special.Consolid.delete;

  for i:=0 to 5 do
    for j:=1 to 7 do
  begin
    TDebit[i,j]:=0;
    TCredit[i,j]:=0;
  end;

  nbpoint:=0;
  DASQL.BalConCo.Open;
  DASQL.BalConCo.First;
  compte:=DASQL.BalConCoCompteG.Value;
  Intitule:=DASQL.BalConCoIntituleG.Value;
  while not DASQL.BalConCo.EOF do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i0:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    DASQL.Qconsolidee.first;
    j:=0;
    while not DASQL.Qconsolidee.eof do
    begin
      if j=10 then
      begin
        showmessage('Le nombre de société est supérieur à 10');
        break;
      end;
      j:=j+1;

      if (copy(DASQL.BalConCoCode.Value,5,3)=copy(DASQL.QconsolideeAgence.Value,1,3)) then
      begin

        if DASQL.BalConCoDebit.Value='D' then
          TDebit[0,j]:=TDebit[0,j]+DASQL.BalConCoMontant.Value;
        if DASQL.BalConCoDebit.Value='C' then
          TCredit[0,j]:=TCredit[0,j]+DASQL.BalConCoMontant.Value;
      end;
      DASQL.Qconsolidee.next;
    end;

    DASQL.BalConCo.Next;

    {Avant de quitter}
    if (DASQL.BalConCoCompteG.Value <>compte)or DASQL.BalConCo.EOF then
    begin
      if not DASQL.DansParam(compte) then
      for j:=1 to 10 do
      begin
        if TDebit[0,j]>TCredit[0,j] then
        begin
          TDebit[0,j]:=TDebit[0,j]-TCredit[0,j];
          TCredit[0,j]:=0;
        end
        else
        begin
          TCredit[0,j]:=TCredit[0,j]-TDebit[0,j];
          TDebit[0,j]:=0;
        end
      end;
      Special.Consolid.Insert;
      Special.ConsolidCompte.value:=compte;
      Special.ConsolidIntitule.value:=Intitule;
      Special.ConsolidDEBIT1.value:=TDebit[0,1];
      Special.ConsolidDEBIT2.value:=TDebit[0,2];
      Special.ConsolidDEBIT3.value:=TDebit[0,3];
      Special.ConsolidDEBIT4.value:=TDebit[0,4];
      Special.ConsolidDEBIT5.value:=TDebit[0,5];
      Special.ConsolidDEBIT6.value:=TDebit[0,6];
      Special.ConsolidDEBIT7.value:=TDebit[0,7];
      Special.ConsolidDEBIT8.value:=TDebit[0,8];
      Special.ConsolidDEBIT9.value:=TDebit[0,9];
      Special.ConsolidDEBIT10.value:=TDebit[0,10];
      Special.ConsolidCREDIT1.value:=TCredit[0,1];
      Special.ConsolidCREDIT2.value:=TCredit[0,2];
      Special.ConsolidCREDIT3.value:=TCredit[0,3];
      Special.ConsolidCREDIT4.value:=TCredit[0,4];
      Special.ConsolidCREDIT5.value:=TCredit[0,5];
      Special.ConsolidCREDIT6.value:=TCredit[0,6];
      Special.ConsolidCREDIT7.value:=TCredit[0,7];
      Special.ConsolidCREDIT8.value:=TCredit[0,8];
      Special.ConsolidCREDIT9.value:=TCredit[0,9];
      Special.ConsolidCREDIT10.value:=TCredit[0,10];
      Special.Consolid.Post;
      for i:=0 to 5 do
        for j:=1 to 10 do
        begin
          TDebit[i,j]:=0;
          TCredit[i,j]:=0;
        end;
      compte:=DASQL.BalConCoCompteG.Value;
      Intitule:=DASQL.BalConCoIntituleG.Value;
    end;
  end;
  FInformat.close;
  Showmessage('Terminé');
end;

procedure TFSelPerio.SpeedButton3Click(Sender: TObject);
begin
  FBalAnn_1.Asehoy;
end;

procedure TFSelPerio.SpeedButton4Click(Sender: TObject);
begin
  DataSource1.DataSet:=DASQL.BalConCo;
  DASQL.BalConCo.Open;
end;

procedure TFSelPerio.SpeedButton1Click(Sender: TObject);
var annee,y,m,d:word;
  dtfin:TDate;
  stdaty:string;
begin
  DaSQL.OpenQConsolidSup6;
  DASQL.QconsolidEmpecheCalcul:=true;
  annee:=StrToInt(edit4.text);
  dtfin:=MetterFinMois(annee,ComboBox2.ItemIndex+1);
  DecodeDate(dtfin,y,m,d);
  stdaty:='Au '+inttostr(d)+' '+special.stmois[ComboBox2.itemindex+1]+' '+edit4.text;
  try
    Application.CreateForm(TFBalCoP1, FBalCoP1);
    FBalCoP1.QRLabel55.caption:=stdaty;
    //FBalCoP1.ShowModal;
    FBalCoP1.QuickRep1.Preview;
  finally
    FBalCoP1.free;
  end;
  DASQL.QconsolidEmpecheCalcul:=false;
end;

procedure TFSelPerio.SpeedButton6Click(Sender: TObject);
begin
  DataSource1.DataSet:=Special.Consolid;
  Special.Consolid.open;
end;

procedure TFSelPerio.SpeedButton5Click(Sender: TObject);
var dtfin:TDate;
  stdaty:string;
  annee:integer;
begin
  DASQL.QconsolidEmpecheCalcul:=true;
  annee:=StrToInt(edit4.text);
  dtfin:=MetterFinMois(annee,ComboBox2.ItemIndex+1);
  stdaty:='SCIM CONSOLIDEE au '+DateToStr(dtfin);
  if DaSQL.OpenQConsolidSup6 then
  try
    Application.CreateForm(TFBalCoP2, FBalCoP2);
    FBalCoP2.QRLabel30.Caption:=stDaty;
    FBalCoP2.QRLabel13.Caption:='SCIM CONSOLIDEE au '+DateToStr(Commun.SocieteExerDeb.Value-1);
    FBalCoP2.QuickRep1.Preview;
  finally
    FBalCoP2.free;
  end
  else
  try
    Application.CreateForm(TFImprCons6, FImprCons6);
    FImprCons6.QRLabel30.Caption:=stDaty;
    FImprCons6.QRLabel13.Caption:='SCIM CONSOLIDEE au '+DateToStr(Commun.SocieteExerDeb.Value-1);
    FImprCons6.QuickRep1.Preview;
  finally
    FImprCons6.free;
  end;
  DASQL.QconsolidEmpecheCalcul:=false;
end;



procedure TFSelPerio.SpeedButton7Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Special.Consolid_prec.Close;
    //Special.Consolid_prec.DatabaseName:= ExtractFilePath(OpenDialog1.FileName);
    //Special.Consolid_prec.TableName:=ExtractFileName(OpenDialog1.FileName);
    Special.Consolid_prec.Open;
  end;
end;

procedure TFSelPerio.SpeedButton8Click(Sender: TObject);
var i,nbpoint,total:integer;
  stpoint:string;
begin
  OpenDialog1.InitialDir:=Commun.SocieteChemin.Value;
  OpenDialog1.FileName:='consolid';
  if not OpenDialog1.Execute then exit;
  Special.Consolid.Close;
  //Special.Consolid.DataBaseName:=ExtractFilePath(OpenDialog1.FileName);
  Special.Consolid.TableName:=ExtractFileName(OpenDialog1.FileName);
  Special.Consolid.Open;
  if CheckBox3.Checked then
  begin
    {-------------Enlever ligne null -----------}
    nbpoint:=0;
    FInformat.Asehoy('Elever ligne null ',' PATIENTEZ.',1000000);
    DASQL.Qconsolid.Close;
    DASQL.Qconsolid.SQL.Clear;
    DASQL.Qconsolid.SQL.Add('Select * from '''+ExtractFileName(OpenDialog1.FileName)+'''');
    DASQL.Qconsolid.open;
    total:=DASQL.Qconsolid.RecordCount;
    DASQL.QconsolidEmpecheCalcul:=true;
    DASQL.Qconsolid.first;
    while not DASQL.Qconsolid.EOF do
    begin
     {------------Affichage Avancement------------}
      nbpoint:=nbpoint+1;
      if nbpoint>10 then
      stpoint:='';
      for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
      FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
      {----------Fin affichage avancement---------}
      if   (DASQL.QconsolidDEBIT1.Value=0)and(DASQL.QconsolidCREDIT1.Value=0)
        and(DASQL.QconsolidDEBIT2.Value=0)and(DASQL.QconsolidCREDIT2.Value=0)
        and(DASQL.QconsolidDEBIT3.Value=0)and(DASQL.QconsolidCREDIT3.Value=0)
        and(DASQL.QconsolidDEBIT4.Value=0)and(DASQL.QconsolidCREDIT4.Value=0)
        and(DASQL.QconsolidDEBIT5.Value=0)and(DASQL.QconsolidCREDIT5.Value=0)
        and(DASQL.QconsolidDEBIT6.Value=0)and(DASQL.QconsolidCREDIT6.Value=0)
        and(DASQL.QconsolidDEBIT_Prec.Value=0)and(DASQL.QconsolidCREDIT_Prec.Value=0) then
      begin
        DASQL.Qconsolid.delete;
      end
      else
        DASQL.Qconsolid.Next;
    end;
    DASQL.QconsolidEmpecheCalcul:=false;
    {--------Commpléter les comptes avec n-1--------------}
    nbpoint:=0;
    FInformat.Asehoy('Complétion n° de compte % à l''exercice précédent ',' PATIENTEZ.',1000000);
    Special.Consolid_prec.First;
    total:=Special.Consolid_prec.RecordCount;
    while not Special.Consolid_prec.EOF do
    begin
      {------------Affichage Avancement------------}
      nbpoint:=nbpoint+1;
      if nbpoint>10 then
      stpoint:='';
      for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
      FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
      {----------Fin affichage avancement---------}

      if not Special.Consolid.Locate('Compte',Special.Consolid_precCompte.Value,[]) then
      begin
        {showmessage(Special.Consolid_precCompte.Value);}
        Special.Consolid.Insert;
        Special.ConsolidCompte.Value:=Special.Consolid_precCompte.Value;
        Special.Consolid.Post;
      end;
      Special.Consolid_prec.Next;
    end;
  end;
  //Special.Consolid.DataBaseName:=ExtractFilePath(OpenDialog1.FileName);
  DASQL.Qconsolid.Close;
  DASQL.Qconsolid.SQL.Clear;
  DASQL.Qconsolid.SQL.Add('Select * from '''+ExtractFileName(OpenDialog1.FileName)+'''');
  DASQL.Qconsolid.SQL.Add('order by compte');
  DASQL.Qconsolid.open;
end;

procedure TFSelPerio.SpeedButton9Click(Sender: TObject);
begin
  DASQL.SelectParam('CONSOLID','TIT 4 POS');
  if DASQL.DansParam(DASQL.QConsolidCompte.Value) then
    showMessage(DASQL.QConsolidCompte.Value+' avoir titre 4 position')
  else
    showMessage(DASQL.QConsolidCompte.Value+' pas de titre 4 position');
end;

end.
