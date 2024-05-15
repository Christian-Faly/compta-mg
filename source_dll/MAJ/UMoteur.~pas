unit UMoteur;

interface

uses
  SysUtils, Classes, DB,

  ShareMem, Windows, Messages,   Graphics, Controls, Forms, Dialogs,
  DBTables,  menus, ADODB,UObjet,ExtCtrls,StdCtrls;

type
  TMoteur = class(TDataModule)
    S_QListeDonnee: TDataSource;
    S_Maitre1: TDataSource;
    S_Maitre2: TDataSource;
    S_MaitreList: TDataSource;
    S_TableList: TDataSource;
    S_DonneListe: TDataSource;
    procedure S_QListeDonneeDataChange(Sender: TObject; Field: TField);
    procedure S_Maitre1DataChange(Sender: TObject; Field: TField);
    procedure S_Maitre2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  private
    { Private declarations }
    iEntree_Maitre1,iEntree_Maitre2,iEntree:integer;
    firstChange:boolean;
  public
    { Public declarations }
    Chem,ndf_M1,chp_M1,ndf_M2,chp_M2,
    ndf_Det,ndf_Det1,Chp_Det1,ndf_Det2,Chp_Det2:string;
    IsList:Boolean;
    procedure ChargerCombo(ndf,ndc:string;cb:TComboBox);
    procedure InitMaitreDetail(odbc,chemin, ndf_Maitre, chp_Maitre,Ndf_Detail,Chp_Detail:string);
    procedure InitMaitre2Detail(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,
                                  Chp_Detail1,ndf_Detail,Chp_Detail2:string);
    procedure InitMaitreDoubleDetail(odbc,Chemin,ndf_Maitre,chp_Maitre,ndf_Detail1,chp_Detail1,
                                        ndf_Detail2,Chp_Detail2:string);
    procedure InitSaisiList(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,Affiche,
                                  ndf_Detail,Chp_Detail1,Chp_Detail2:string);
    procedure Choisir;
    procedure RechercheChamps(ndf_Maitre1,Valeur_Maitre1,chp_Detail1,
                                ndf_Maitre2,Valeur_Maitre2,chp_Detail2:string);
    procedure FormerListChamps(Ndf:string;var ListChamps:TListChamps);
    function  ChercherType(DataType:TFieldType;var CharVe:boolean):string;
    function  CreationControle(Ndf:string;Panel:TPanel;debut:integer;
                          ListeCheck:TListeCheck;ListeLabel:TListeLabel;
                          ListeEdit:TListeEdit):integer;
    procedure InsererListe;
    function InitListDonnee(var QList:TADOQuery;ndf,ndfMaitre,chp_Det:string;
               rang_maitre:word; var Ent:TEntree):boolean;
    procedure  OuvrirQuery(var QList:TADOQuery;Ent:TEntree);
  end;

var
  Moteur: TMoteur;

procedure CreerMoteur;
procedure VonoyMoteur;

implementation

uses SaisiDonnee2;


procedure CreerMoteur;
begin
  Application.CreateForm(TMoteur, Moteur);
end;

procedure VonoyMoteur;
begin
  Moteur.Free;
end;

{$R *.dfm}

function TMoteur.InitListDonnee(var QList:TADOQuery; ndf,ndfMaitre,chp_Det:string;
                      rang_maitre:word;var Ent:TEntree):boolean;
var i,k:integer;
  first,misy:boolean;
  st:string;
begin
  QList.Close;
  QList.SQL.Clear;
  QList.SQL.Add('select * from '+ ndf+' ');
  DObjet.TListeDonnee.Close;
  DObjet.TListeDonnee.TableName:=Ndf;
  DObjet.TListeDonnee.Open;
  misy:=false;
  first:=true;
  for i:=0 to DObjet.TListeDonnee.Fields.Count-1 do
  begin
    if Ent[i+1].critere >'0' then
    begin
      misy:=true;
      if first then
      begin
        st:='where ';
        first:=false;
      end
      else
        st:='And ';
      QList.SQL.Add(st+ '(' +DObjet.TListeDonnee.Fields[i].FieldName +
                                   Ent[i+1].critere + Ent[i+1].Valeur+')');
    end;
    if (length(ndfMaitre)>0)and(DObjet.TListeDonnee.Fields[i].FieldName = chp_Det) then
    begin
      Ent[i+1].Ndf :=ndfMaitre;
      Ent[i+1].Visible:=False;
      if rang_Maitre=1 then iEntree_Maitre1:=i+1;
      if rang_Maitre=2 then iEntree_Maitre2:=i+1;
      if rang_Maitre=3 then iEntree:=i+1;
    end;
  end;
  if length(chp_Det)>0 then
  begin
    if not misy then
      QList.SQL.Add(' where '+ chp_Det+'=:a')
    else
      QList.SQL.Add(' and ('+ chp_Det+'=:a)');
    QList.parameters[0].value:='0';
    misy:=true;
  end;
  //for i:=0 to QList.SQL.Count-1 do
    //showMessage(QList.SQL[i]);
  Result:=misy;
end;

procedure  TMoteur.OuvrirQuery(var QList:TADOQuery;Ent:TEntree);
var i:integer;
begin
  QList.Open;
  i:=0;
  for i:=0 to  QList.FieldCount-1 do
  begin
    QList.Fields[i].Visible := Ent[i+1].Visible;
    if QList.Fields[i].DataType=ftDateTime then
    begin
      QList.Fields[i].EditMask:='!90:00;1;_';
    end;
  end;
end;


procedure TMoteur.InitMaitreDetail(odbc,chemin, ndf_Maitre, chp_Maitre,
                                             Ndf_Detail,Chp_Detail:string);
var i:integer;
begin
  //showMessage('1');
  firstChange:=true;
  chem   := Chemin;
  ndf_M2 := ndf_Maitre;
  chp_M2 := chp_Maitre;
  ndf_M1 := '';
  chp_M1 := '';
  Ndf_Det:= Ndf_Detail;
  Chp_Det1:= Chp_Detail;
  DObjet.ChangeConnection(odbc,Chemin);
  InitListDonnee(DObjet.Maitre2,Ndf_Maitre,'','',2, EntreeMaitre2);
  InitListDonnee(Dobjet.QListDonnee,ndf_Detail,Ndf_Maitre,Chp_Detail,3,Entree);
  firstChange:=false;
  OuvrirQuery(DObjet.Maitre2,EntreeMaitre2);
end;


procedure TMoteur.InitMaitre2Detail(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,
                                    Chp_Detail1,ndf_Detail,Chp_Detail2:string);
begin
  FirstChange:=true;
  Chem:=Chemin;
  ndf_M1:=ndf_Maitre1;
  chp_M1:=chp_Maitre1;
  ndf_M2:=ndf_Maitre2;
  chp_M2:=Chp_Detail1;
  //showMessage('1:'+chp_Maitre2);
  ndf_Det:=ndf_Detail;
  Chp_Det1:=Chp_Detail1;
  Chp_Det2:=Chp_Detail2;
  DObjet.ChangeConnection(odbc,Chemin);
  InitListDonnee(DObjet.Maitre1,Ndf_Maitre1,'','',1, EntreeMaitre1);
  InitListDonnee(DObjet.Maitre2,Ndf_Maitre2,Ndf_Maitre1,chp_Maitre2,2, EntreeMaitre2);
  InitListDonnee(Dobjet.QListDonnee,ndf_Detail,Ndf_Maitre2,Chp_Detail2,3,Entree);
  firstChange:=false;
  OuvrirQuery(DObjet.Maitre1,EntreeMaitre1);
end;

procedure TMoteur.InitMaitreDoubleDetail(odbc,Chemin,ndf_Maitre,chp_Maitre,ndf_Detail1,chp_Detail1,
                                         ndf_Detail2,Chp_Detail2:string);
begin
  FirstChange:=true;
  Chem:=Chemin;
  ndf_M1:=ndf_Maitre;
  chp_M1:=chp_Maitre;
  ndf_Det1:=ndf_Detail1;
  Chp_Det1:=Chp_Detail1;
  ndf_Det2:=ndf_Detail2;
  Chp_Det2:=Chp_Detail2;
  DObjet.ChangeConnection(odbc,Chemin);
  InitListDonnee(DObjet.QListDonnee,Ndf_Maitre,'','',1, Entree);
  if Ndf_Detail1>'' then
    InitListDonnee(DObjet.Detail1,Ndf_Detail1,Ndf_Maitre,chp_Detail1,2, EntreeDetail1);
  if Ndf_Detail2>'' then
    InitListDonnee(DObjet.Detail2,Ndf_Detail2,Ndf_Maitre,chp_Detail2,2, EntreeDetail2);
  firstChange:=false;
  OuvrirQuery(DObjet.QListDonnee,Entree);
end;


procedure TMoteur.FormerListChamps(Ndf:string;var ListChamps:TListChamps);
var i: integer;
    t: string;
   cv: boolean;
begin
  DObjet.QListDonnee.Close;
  DObjet.QListDonnee.SQL.Clear;
  DObjet.QListDonnee.SQL.Add('select * from '+ ndf+' ');
  DObjet.QListDonnee.open;
  for i:=0 to DObjet.QListDonnee.FieldDefs.Count-1 do
  begin
    ListChamps[i].ndc := DObjet.QListDonnee.FieldDefs[i].Name;
    ListChamps[i].Typ := ChercherType(DObjet.QListDonnee.FieldDefs[i].DataType,cv);
    ListChamps[i].taille:= DObjet.QListDonnee.FieldDefs[i].Size;
  end;
end;

function TMoteur.ChercherType(DataType:TFieldType;var CharVe:boolean):string;
var TypeChamps:string;
begin
  CharVe:=false;
  TypeChamps:='CHAR(50)';
  case DataType of
    ftUnknown     : TypeChamps:='Inconnu';
    ftString      : begin TypeChamps:='CHAR'; CharVe:=True;end;
    ftSmallint    : TypeChamps:='Smallint';
    ftInteger     : TypeChamps:='Integer';
    ftWord        : TypeChamps:='Smallint';
    ftBoolean     : TypeChamps:='Smallint';
    ftFloat       : TypeChamps:='Float';
    ftCurrency    : TypeChamps:='Currency';
    ftBCD         : TypeChamps:='BCD';
    ftDate        : TypeChamps:='Date';
    ftTime        : TypeChamps:='Time';
    ftDateTime    : TypeChamps:='DateTime';
    ftBytes       : TypeChamps:='Bytes';
    ftVarBytes    : TypeChamps:='VarBytes';
    ftAutoInc     : TypeChamps:='AutoIncrement';
    ftBlob        : TypeChamps:='Blob';
    ftMemo        : TypeChamps:='Memo';
    ftGraphic     : TypeChamps:='Graphic';
    ftFmtMemo     : TypeChamps:='FmtMemo';
    ftParadoxOle  : TypeChamps:='ParadoxOle';
    ftDBaseOle    : TypeChamps:='DBaseOle';
    ftTypedBinary : TypeChamps:='TypedBinary';
    ftCursor      : TypeChamps:='Cursor';
    ftFixedChar   : TypeChamps:='FixedChar';
    ftWideString  : begin TypeChamps:='CHAR'; CharVe:=True;end;
    ftLargeint    : TypeChamps:='Largeint';
    ftADT         : TypeChamps:='ADT';
    ftArray       : TypeChamps:='Array';
    ftReference   : TypeChamps:='Reference';
    ftDataSet     : TypeChamps:='DataSet';
    ftOraBlob     : TypeChamps:='OraBlob';
    ftOraClob     : TypeChamps:='OraClob';
    ftVariant     : TypeChamps:='Variant';
    ftInterface   : TypeChamps:='Interface';
    ftIDispatch   : TypeChamps:='IDispatch';
    ftGuid        : TypeChamps:='Guid';
    ftTimeStamp   : TypeChamps:='TimeStamp';
    ftFMTBcd      : TypeChamps:='FMTBcd';
  end;
  Result:= TypeChamps;
end;

procedure TMoteur.InitSaisiList(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,Affiche,
                                    ndf_Detail,Chp_Detail1,Chp_Detail2:string);
var i:integer;
begin
  Chem:=Chemin;
  ndf_M1:=ndf_Maitre1;
  chp_M1:=chp_Maitre1;
  ndf_M2:=ndf_Maitre2;
  chp_M2:=chp_Maitre2;
  ndf_Det:=ndf_Detail;
  Chp_Det1:=Chp_Detail1;
  Chp_Det2:=Chp_Detail2;
  DObjet.TableList.TableName:=Ndf_Maitre2;
  DObjet.T_DonneeListe.TableName:=ndf_Detail;
  DObjet.T_DonneeListe.Open;
  DObjet.Q_DonneeListe.Close;
  DObjet.Q_DonneeListe.SQL.Clear;
  DObjet.Q_DonneeListe.SQL.Add('select '+ ' b.'+ Affiche +' from '+ndf_Detail+ ' a, '+ Ndf_Maitre2+' b');
  DObjet.Q_DonneeListe.SQL.Add(' where ('+chp_Detail1+'=:x)and(a.'+Chp_Detail2+'=b.'+chp_Maitre2+')');
  {for i:=0 to DObjet.QListDonnee.SQL.Count -1 do
    showMessage('SQL QListDonnee:'+DObjet.QListDonnee.SQL[i]); }
  IsList:=True;
  DObjet.QListDonnee.open;
  for i:=0 to DObjet.QListDonnee.Fields.Count-1 do
    if DObjet.QListDonnee.Fields[i].DataType=ftDateTime then
    begin
      DObjet.QListDonnee.Fields[i].EditMask:='!90:00;1;_';
    end;

  DObjet.TableList.open;
end;

procedure TMoteur.RechercheChamps(ndf_Maitre1,Valeur_Maitre1,chp_Detail1,
                                  ndf_Maitre2,Valeur_Maitre2,chp_Detail2:string);
var i,k,l:integer;
begin

  for k:=0 to DObjet.QListDonnee.Fields.Count-1 do
    if DObjet.QListDonnee.Fields[k].FieldName = chp_Detail1 then break;
  Entree[k+1].Ndf :=ndf_Maitre1;
  Entree[k+1].Valeur :=Valeur_Maitre1;

  if ndf_Maitre2<>'' then
  begin
    for l:=0 to DObjet.QListDonnee.Fields.Count-1 do
      if DObjet.QListDonnee.Fields[l].FieldName = chp_Detail2 then break;
    Entree[l+1].Ndf :=ndf_Maitre2;
    Entree[l+1].Valeur :=Valeur_Maitre2;
  end;
end;

procedure TMoteur.ChargerCombo(ndf,ndc:string;cb:TComboBox);
begin
  cb.Clear;
  DObjet.Table1.Close;
  DObjet.Table1.TableName := Ndf;
  DObjet.Table1.Open;
  while not DObjet.Table1.EOF do
  begin
    cb.Items.Add(DObjet.Table1.fieldbyName(ndc).Value);
    DObjet.Table1.Next;
  end;
end;

procedure TMoteur.Choisir;
begin
  DObjet.TTempon.open;
  DObjet.TTempon.first;
  DObjet.TTempon.edit;
  DObjet.TTemponString1.Value:=DObjet.QListDonnee.fields[0].AsString;
  DObjet.TTemponString2.Value:=DObjet.QListDonnee.fields[1].AsString;
  if DObjet.QListDonnee.fields.Count >2 then
    DObjet.TTemponString3.Value:=DObjet.QListDonnee.fields[2].AsString;
  if DObjet.QListDonnee.fields.Count >3 then
    DObjet.TTemponString4.Value:=DObjet.QListDonnee.fields[3].AsString;
  DObjet.TTempon.post;
end;

function TMoteur.CreationControle(Ndf:string;Panel:TPanel;Debut:integer;
                          ListeCheck:TListeCheck;ListeLabel:TListeLabel;
                          ListeEdit:TListeEdit):integer;
var  i,lef,topy,pasvert,pashori,inithori,initvert,nb_Entree: Integer;
begin
  nb_Entree:=0;
  inithori:=100;
  initvert:=50;
  lef:=inithori;
  topy:=initvert;
  pasvert:=25;     // TField
  pashori:=275;
  DObjet.QListDonnee.Close;
  DObjet.QListDonnee.SQL.Clear;
  DObjet.QListDonnee.SQL.Add('select * from '+ ndf+' ');
  DObjet.QListDonnee.open;
  for i:=debut to  DObjet.QListDonnee.fields.Count+debut do
  begin
    //showMessage('Isa1:'+IntToStr(i));
    case DObjet.QListDonnee.fields[i-1].DataType of
      ftAutoInc:;
      ftboolean:
      begin
        ListeCheck[i]:=TCheckBox.Create(self);
        ListeCheck[i].parent:=Panel;//PageControl1.Pages[0];
        ListeCheck[i].left:=lef-60;
        ListeCheck[i].top:=topy;
        ListeCheck[i].caption:=DObjet.QListDonnee.fields[i-1].FieldName;
      end;
      else
      begin
        ListeLabel[i]:=TLabel.Create(self);
        ListeLabel[i].parent:=Panel;//PageControl1.Pages[0];
        ListeLabel[i].AutoSize :=false;
        ListeLabel[i].Width  :=150;
        ListeLabel[i].Alignment:=taRightJustify;
        ListeLabel[i].left:=0;
        ListeLabel[i].top:=topy;
        ListeLabel[i].caption:=DObjet.QListDonnee.fields[i-1].FieldName;
        Listeedit[i]:=TEdit.Create(self);
        Listeedit[i].parent:=Panel;//PageControl1.Pages[0];
        Listeedit[i].left:=155;
        Listeedit[i].top:=topy;
        Listeedit[i].text:='';
        Listeedit[i].width:=14*DObjet.QListDonnee.fields[i-1].DisplayWidth ;
      end;
    end;
  end;
  Panel.height:=pasvert*14;
  Result:=DObjet.QListDonnee.fields.Count+debut;
end;

procedure TMoteur.InsererListe;
begin
  DObjet.T_DonneeListe.Insert;
  DObjet.T_DonneeListe.FieldByName(Chp_Det1).Value:=DObjet.QListDonnee.FieldByName(Chp_M1).Value;
  DObjet.T_DonneeListe.FieldByName(Chp_Det2).Value:=DObjet.TableList.FieldByName(Chp_M2).Value;
  DObjet.T_DonneeListe.Post;
  DObjet.Q_DonneeListe.Requery;
end;

procedure TMoteur.S_QListeDonneeDataChange(Sender: TObject;
  Field: TField);
begin
  {if not IsList then exit;
  DObjet.Q_DonneeListe.Close;
  if DObjet.QListDonnee.RecordCount >0 then
    DObjet.Q_DonneeListe.Parameters[0].Value:=DObjet.QListDonnee.FieldByName(Chp_M1).Value
  else
    DObjet.Q_DonneeListe.Parameters[0].Value:=0;
  DObjet.Q_DonneeListe.Open;}
end;

procedure TMoteur.S_Maitre1DataChange(Sender: TObject; Field: TField);
var st:string;
  i:integer;
begin
  if firstChange then  exit;
  try
    firstChange:=false;
    DObjet.Maitre2.Close;
    if DObjet.Maitre1.RecordCount > 0 then
    begin
      st:=DObjet.Maitre1.FieldByName(Chp_M1).Value;
      DObjet.Maitre2.Parameters[0].Value :=st;
      EntreeMaitre2[iEntree_Maitre2].Valeur:= st;
    end
    else
      DObjet.Maitre2.Parameters[0].Value :='0';
    OuvrirQuery(DObjet.Maitre2,EntreeMaitre2);
  except
    On EDataBaseError do;
    On EConvertError do;
    On EVariantError do;
  end;
end;

procedure TMoteur.S_Maitre2DataChange(Sender: TObject; Field: TField);
var i:integer;
  st:string;
begin
  //exit;
  if firstChange then  exit;
  try
    firstChange:=false;
    DObjet.QListDonnee.Close;
    if DObjet.Maitre2.RecordCount>0 then
    begin
      st:=DObjet.Maitre2.FieldByName(chp_M2).Value;
      DObjet.QListDonnee.Parameters[0].Value :=st;
      Entree[iEntree].Valeur:=st;
    end
    else
      DObjet.QListDonnee.Parameters[0].Value :='0';
    OuvrirQuery(DObjet.QListDonnee,Entree);
    //
  except
    On EDataBaseError do;
    On EConvertError do;
    On EVariantError do;
     //showmessage('L''un de la table '+ndf_M1+' ou '+ndf_M2+' est vide');
  end;
end;

end.
