unit LstTier1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Grids, DBGrids, Db, StdCtrls;

type
  TFLstTier1 = class(TForm)
    DBGrid1: TDBGrid;
    SourceSelTiers: TDataSource;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Label19: TLabel;
    Label28: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SourceSelTiersDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
    TypTier:string;
    code:string;
    procedure Selectionner(Code,RS,Famille,Ville,Pays:string;
                                  order1,order2:integer);
    procedure SQLInfoTiers;
  public
    { Déclarations publiques }
    Procedure Asehoy(TypeTiers:string;Choisir:boolean);
  end;

var
  FLstTier1: TFLstTier1;

Procedure AsehoyLstTier1(TypeTiers,codesoc:string;Choisir:boolean);export;

implementation

uses DaTiers, SaiClient, ImporSto, Sqclient, SaiCompo;

{$R *.DFM}

procedure AsehoyLstTier1(TypeTiers,codesoc:string;Choisir:boolean);
begin

  IsFourni  :=(uppercase(TypeTiers)=UpperCase('Fournisseur'));
  IsCollect  :=(uppercase(TypeTiers)=UpperCase('Collecteur'));
  IsClient  :=(uppercase(TypeTiers)=uppercase('Client'));
  IsCompoCli:=(uppercase(TypeTiers)=uppercase('CompoCli'));
  IsCompoFou:=(uppercase(TypeTiers)=uppercase('CompoFou'));
  IsContact:=(not IsCollect)and(not IsFourni)and(not IsClient)and(not IsCompoCli)and (Not IsCompoFou);

  try
    DataTiers:=TDataTiers.Create(Application);
    ChangeCheminTiers(codesoc);
    FLstTier1:=TFLstTier1.Create(Application);
    FLstTier1.Asehoy(TypeTiers,Choisir);
  finally
    FLstTier1.free;
    VonoyDataTiers;
  end;
end;

Procedure TFLstTier1.Asehoy(TypeTiers:string;Choisir:boolean);
var i:integer;
Begin
  BitBtn2.Visible:=choisir;
  if choisir then
  begin
    WindowState:= wsNormal;
    BitBtn3.Caption:='Annuler';
    DataTiers.Tempon.open;
    DataTiers.Tempon.first;
    DataTiers.Tempon.edit;
    DataTiers.TemponString1.Value:='';
    DataTiers.TemponString2.Value:='';
    DataTiers.TemponString3.Value:='';
    DataTiers.Tempon.post;
  end;
  TypTier:=TypeTiers;
  DataTiers.TFam_Cli.Open;
  Selectionner('','','','','',0,0);
  SQLInfoTiers;
  Showmodal;
end;

procedure TFLstTier1.SpeedButton1Click(Sender: TObject);
begin
  if IsClient or IsFourni or IsCollect then
  try
    Application.CreateForm(TFSaiClient, FSaiClient);
    FSaiClient.Asehoy(True,'',code);
  finally
   FSaiClient.Free;
  end;
  DataTiers.SelTiers.Close;
  DataTiers.SelTiers.Open;
end;

procedure TFLstTier1.SpeedButton3Click(Sender: TObject);
var code:string;
   bm:TBookMark;
begin
  if MessageDlg('Voulez vous supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    Code:=DataTiers.SelTiersCode.Value;
    DataTiers.QTiers.close;
    DataTiers.QTiers.paramByName('a').AsString:=Code;
    DataTiers.QTiers.open;
    DataTiers.QAdresse1.close;
    DataTiers.QAdresse1.paramByName('a').AsString:=Code;
    DataTiers.QAdresse1.open;
    DataTiers.QDivers1.close;
    DataTiers.QDivers1.paramByName('a').AsString:=Code;
    DataTiers.QDivers1.open;
    DataTiers.QInterlo1.close;
    DataTiers.QInterlo1.paramByName('a').AsString:=Code;
    DataTiers.QInterlo1.open;
    DataTiers.QCompoCli.close;
    DataTiers.QCompoCli.paramByName('a').AsString:=Code;
    DataTiers.QCompoCli.open;
    try DataTiers.QTiers.delete; except end;
    try DataTiers.QAdresse1.delete;except end;
    try DataTiers.QDivers1.delete;except end;
    try DataTiers.QInterlo1.delete;except end;
    try DataTiers.QCompoCli.delete;except end;
    bm:=DataTiers.QTiers.GetBookmark;
    DataTiers.SelTiers.Close;
    DataTiers.SelTiers.Open;
    DataTiers.SelTiers.GotoBookMark(bm);
    DataTiers.SelTiers.FreeBookMark(bm);
  end;
end;

procedure TFLstTier1.SpeedButton2Click(Sender: TObject);
begin
  if IsClient or IsFourni or IsCollect then
  try
    Application.CreateForm(TFSaiClient, FSaiClient);
    FSaiClient.Asehoy(false,'',code);
  finally
   FSaiClient.Free;
  end;
  //DataTiers.SelTiers.Refresh;
end;

procedure TFLstTier1.BitBtn2Click(Sender: TObject);
begin
  DataTiers.Tempon.open;
  DataTiers.Tempon.first;
  DataTiers.Tempon.edit;
  DataTiers.TemponString1.Value:=DataTiers.SelTiersCode.Value;
  DataTiers.TemponString2.Value:=DataTiers.SelTiersRS.Value;
  DataTiers.TemponString3.Value:=DataTiers.SelTiersAdresse.Value;
  DataTiers.TemponString4.Value:=DataTiers.SelTiersCodeFam.Value;
  DataTiers.Tempon.post;
  close;
end;

procedure TFLstTier1.SpeedButton5Click(Sender: TObject);
var Code,RS,Famille,Ville,Pays:String;
    Order1,Order2:integer;
    okay:boolean;
begin
  AsehoySQClient(Code,RS,Famille,Ville,Pays,Order1,Order2,okay);
  if not okay then exit;
  Selectionner(Code,RS,Famille,Ville,Pays,Order1,Order2);
end;

procedure TFLstTier1.Selectionner(Code,RS,Famille,Ville,Pays:string;
                                  order1,order2:integer);
begin
  DataTiers.SelTiers.close;
  DataTiers.SelTiers.sql.clear;
  DataTiers.SelTiers.sql.Add('select * from Tiers a, AdresTiers b');
  DataTiers.SelTiers.sql.Add('where (a.code=b.code)');
  DataTiers.SelTiers.sql.Add('and (a.code=b.code)');
  if (length(code)>0) then
    DataTiers.SelTiers.sql.Add('and (a.code='''+Code+''')');
  if (length(RS)>0) then
    DataTiers.SelTiers.sql.Add('and (a.nom='''+RS+''')');
  if (length(Famille)>0)  then
    DataTiers.SelTiers.sql.Add('and (a.CodeFam='''+Famille+''')');
  if (length(Ville)>0)   then
    DataTiers.SelTiers.sql.Add('and (b.CP='''+Ville+''')');
  if (length(Pays)>0)    then
    DataTiers.SelTiers.sql.Add('and (b.Pays='''+Pays+''')');
  if Order1=1 then
    DataTiers.SelTiers.sql.Add('order by a.Code');
  if Order1=2 then
    DataTiers.SelTiers.sql.Add('order by a.RS');
  if Order1=3 then
    DataTiers.SelTiers.sql.Add('order by a.CodeFam');
  if Order1=4 then
    DataTiers.SelTiers.sql.Add('order by b.CP');
  if Order2=1 then
    DataTiers.SelTiers.sql.Add(', a.Code');
  if Order2=2 then
    DataTiers.SelTiers.sql.Add(', a.RS');
  if Order2=3 then
    DataTiers.SelTiers.sql.Add(', a.CodeFam');
  if Order2=4 then
    DataTiers.SelTiers.sql.Add(', b.CP');
  DataTiers.SelTiers.open;
end;

procedure TFLstTier1.SQLInfoTiers;
begin
  DataTiers.QAdresse1.close;
  DataTiers.QAdresse1.SQL.Clear;
  DataTiers.QAdresse1.SQL.Add('select * from ''AdresTiers'' where code=:a');

  DataTiers.QDivers1.close;
  DataTiers.QDivers1.SQL.Clear;
  DataTiers.QDivers1.SQL.Add('select * from ''DiverTiers'' where code=:a');

  DataTiers.QInterlo1.close;
  DataTiers.QInterlo1.SQL.Clear;
  DataTiers.QInterlo1.SQL.Add('select * from ''InterTiers'' where code=:a');

  DataTiers.QCompoCli.close;
  DataTiers.QCompoCli.SQL.Clear;
  DataTiers.QCompoCli.SQL.Add('select * from ''CompoTiers'' where code=:a');
end;

procedure TFLstTier1.SpeedButton6Click(Sender: TObject);
begin
  Selectionner('','','','','',0,0);
end;

procedure TFLstTier1.SpeedButton4Click(Sender: TObject);
begin
  if IsCompoCli or IsCompoFou then
  try
    Application.CreateForm(TFSaiCompo, FSaiCompo);
    FSaiCompo.Asehoy(false,DataTiers.SelTiersCode.Value);
  finally
   FSaiCompo.Free;
  end;
end;

procedure TFLstTier1.SourceSelTiersDataChange(Sender: TObject;
  Field: TField);
begin
  if IsCompoCli or IsCompoFou then
  begin
    DataTiers.QCompoCli.close;
    DataTiers.QCompoCli.paramByName('a').AsString:=DataTiers.SelTiersCode.Value;
    DataTiers.QCompoCli.open;
  end;
end;



procedure TFLstTier1.BitBtn1Click(Sender: TObject);
begin
  Panel4.Visible:= not Panel4.Visible;
end;

procedure TFLstTier1.BitBtn3Click(Sender: TObject);
begin
  close;
end;



end.
