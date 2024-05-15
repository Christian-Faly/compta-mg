unit CanevaDCOMM_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, Buttons, StdCtrls, Mask, DB,
  ComCtrls, ADODB;

type
  TFCanevaDCOMM = class(TForm)
    PageControl1: TPageControl;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    CheckConso: TCheckBox;
    Panel4: TPanel;
    PageControl2: TPageControl;
    TabConso: TTabSheet;
    TabTamatave: TTabSheet;
    TabDiego: TTabSheet;
    DBGrid3: TDBGrid;
    GroupDetail: TGroupBox;
    DBGrid1: TDBGrid;
    SpeedButton4: TSpeedButton;
    sq_x_dcomm: TDataSource;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    SpeedButton5: TSpeedButton;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure CheckConsoClick(Sender: TObject);
    procedure sq_x_dcommDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    st_annee:string;
    agence:integer;
    detail:boolean;
    procedure MontrerConsolide(Oui:boolean);
    procedure Ouvrir(annee:string;det:boolean);
    procedure TabSheetCaneva(name, description:string);
    procedure Caneva_Change(code_caneva,st_agence:string);
    procedure Caneva_Export;
    procedure OuvrirDetail(journal_:string);
    procedure Caneva_PLP(st_agence:string;detail:boolean);
    procedure Critere_date(code_caneva:string);
    procedure Caneva_SVT(st_agence:string;detail:boolean);
  public
    { Public declarations }
  end;

var
  FCanevaDCOMM: TFCanevaDCOMM;

procedure AsehoyCanevaDCOMM(annee:string;det:boolean);

implementation

uses Daspecia, USQL, comObj, UConnect, DaDeclVao_U , EtatDeclare_U,
  DaCommun;

{$R *.dfm}

procedure AsehoyCanevaDCOMM(annee:string;det:boolean);
begin
  if FCanevaDCOMM <> nil then
    FCanevaDCOMM.Free;
  FCanevaDCOMM := TFCanevaDCOMM.Create(Application);
  FCanevaDCOMM.WindowState := wsMaximized;
  FCanevaDCOMM.Ouvrir(annee,det);
end;

procedure TFCanevaDCOMM.MontrerConsolide(Oui:boolean);
var conso :boolean;
begin
  conso:=oui;
  TabConso.TabVisible := conso;
  TabTamatave.TabVisible := conso or (agence=210);
  TabDiego.TabVisible := conso or (agence=311);
end;

procedure TFCanevaDCOMM.Ouvrir(annee:string;det:boolean);
begin
  detail:= det;
  st_annee:= annee;
  Label5.Caption := annee;
  DateTimePicker1.Date := EncodeDate(StrToInt(st_annee),1,1);
  DateTimePicker2.Date := EncodeDate(StrToInt(st_annee),12,31);
  agence := StrToInt(copy(commun.SocieteChemin.Value,2,3));
  DaDeclVao.caneva_dcomm.Open;
  DaDeclVao.caneva_dcomm.First;
  while not DaDeclVao.caneva_dcomm.Eof do
  begin
    TabSheetCaneva(DaDeclVao.caneva_dcommcode.Value, DaDeclVao.caneva_dcommdescription.Value);
    DaDeclVao.caneva_dcomm.Next;
  end;
  PageControl1.ActivePageIndex  := 0;
  Caneva_Change(PageControl1.ActivePage.Name,IntToStr(agence));
  MontrerConsolide(false);
end;

procedure TFCanevaDCOMM.TabSheetCaneva(name, description:string);
var
  newtab: TTabSheet;
begin
  newtab := TTabSheet.Create(PageControl1);
  newtab.PageControl := PageControl1;
  newtab.name := name;
  newtab.Caption := description;
end;

procedure TFCanevaDCOMM.Caneva_Export;
begin
  DaDeclVao.q_x_dcomm_export.Close;
  DaDeclVao.q_x_dcomm_export.SQL.Clear;
  DaDeclVao.q_x_dcomm_export.SQL.Add('SELECT ''EXPORT'' as rs, CAST(sum(CASE WHEN debit = ''D'' THEN -montant ELSE montant END) AS bigint) as compta');
  DaDeclVao.q_x_dcomm_export.SQL.Add('FROM eltjrn_'+st_annee);
  DaDeclVao.q_x_dcomm_export.SQL.Add('JOIN journal_'+st_annee+' ON journal_= code_');
  DaDeclVao.q_x_dcomm_export.SQL.Add('WHERE compte>''7072'' AND compte<''7072Z''');
  DaDeclVao.q_x_dcomm_export.SQL.Add('AND "left"(journal,2)<>''CL'' AND "left"(journal,2)<>''AN''');
  Memo1.Lines := DaDeclVao.q_x_dcomm_export.SQL;
  DaDeclVao.q_x_dcomm_export.Open;
  sq_x_dcomm.DataSet := DaDeclVao.q_x_dcomm_export;
end;

procedure TFCanevaDCOMM.Caneva_PLP(st_agence:string;detail:boolean);
begin
  DaDeclVao.q_x_dcomm_plp.Close;
  DaDeclVao.q_x_dcomm_plp.SQL.Clear;
  if not detail then
  begin
    DaDeclVao.q_x_dcomm_plp.SQL.Add('SELECT  code_cn, nom_commun,''kg'' as unite, sum(qte) quantite, CAST(sum(montant) AS bigint) as valeur FROM(');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  SELECT journal_,jour,compte,substring(compte,5,2) as analyt, qte, montant');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  FROM eltjrn_'+st_annee);
    DaDeclVao.q_x_dcomm_plp.SQL.Add('JOIN journal_'+st_annee+' ON journal_= code_');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  WHERE qte is not null');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  AND compte > ''6071'' AND compte < ''6071Z''');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  ) as a');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('JOIN code_analytique on analyt=code');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  WHERE substring(journal_ from 2 for 3)='''+st_agence+'''');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('--AND substring(journal_,12,2)=''08''');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('GROUP BY code_cn, nom_commun');
    Memo1.Lines := DaDeclVao.q_x_dcomm_plp.SQL;
  end
  else
  begin
    DaDeclVao.q_x_dcomm_plp.SQL.Add('SELECT  intitule as fournisseur ,code_cn, nom_commun,''kg'' as unite, sum(qte) quantite, CAST(sum(montant) AS bigint) as valeur,numfact');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('FROM(');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('    SELECT journal_,jour,compte,tiers,numfact,substring(compte,5,2) as analyt, qte, montant');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  FROM eltjrn_'+st_annee);
    DaDeclVao.q_x_dcomm_plp.SQL.Add('JOIN journal_'+st_annee+' ON journal_= code_');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('    WHERE qte is not null');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('    AND compte > ''6071'' AND compte < ''6071Z''');
    DaDeclVao.q_x_dcomm_plp.SQL.Add(') as a');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('JOIN code_analytique on analyt=code');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('join numcpt_'+st_annee+' ON numcpt = tiers');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('  WHERE substring(journal_ FROM 2 for 3)='''+st_agence+'''');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('GROUP BY fournisseur,code_cn, nom_commun, numfact');
    DaDeclVao.q_x_dcomm_plp.SQL.Add('ORDER BY fournisseur,code_cn, nom_commun');
  end;
  DaDeclVao.q_x_dcomm_plp.Open;
  sq_x_dcomm.DataSet := DaDeclVao.q_x_dcomm_plp;
end;


procedure TFCanevaDCOMM.Caneva_Change(code_caneva,st_agence:string);
begin
  Label6.Caption := PageControl1.ActivePage.Caption;
  if code_caneva='MV' then
    Caneva_Export
  else
  if code_caneva='PLP' then
    Caneva_PLP(st_agence,detail)
  else
  if code_caneva='SVT' then
    Caneva_SVT(st_agence,detail)
  else
  begin
    if detail then
    begin
      DaDeclVao.q_x_dcomm_export.Close;
      DaDeclVao.q_caneva_lst_compte.Close;
      DaDeclVao.q_caneva_lst_compte.Parameters[0].Value :=  code_caneva;
      DaDeclVao.q_caneva_lst_compte.Open;
      DaDeclVao.caneva_dcomm.Locate('code',code_caneva,[]);
      DaDeclVao.q_x_dcomm.close;
      DaDeclVao.q_x_dcomm.SQL.Clear;
      DaDeclVao.q_x_dcomm.SQL.Add('SELECT c.tiers,substring(journal_ from 10 for 8) as journal, jour,');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.nif,');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.statistique,');
      DaDeclVao.q_x_dcomm.SQL.Add('    d.intitule AS rs,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.adresse,');
      DaDeclVao.q_x_dcomm.SQL.Add('    g.lieu,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.pays,');
      DaDeclVao.q_x_dcomm.SQL.Add('    libelle,qte,comptabilisee,versee --produit,');
      DaDeclVao.q_x_dcomm.SQL.Add(' from');
      DaDeclVao.q_x_dcomm.SQL.Add('(SELECT b.tiers, libelle,qte,substring(x.compte_,14,2) AS code_anal,x.journal_, y.jour,--famille2 as produit,');
      DaDeclVao.q_x_dcomm.SQL.Add('    b.compta AS comptabilisee,');
      DaDeclVao.q_x_dcomm.SQL.Add('    b.compta AS versee');
      DaDeclVao.q_x_dcomm.SQL.Add('   FROM eltjrn_'+st_annee+' AS x');
      //if detail then
      DaDeclVao.q_x_dcomm.SQL.Add(' -- left join (SELECT nature , max(famille) as famille2 FROM typprod group by nature) AS  t on typx = nature');
      DaDeclVao.q_x_dcomm.SQL.Add('   join journal_'+st_annee+' y ON x.journal_=y.code_');
      DaDeclVao.q_x_dcomm.SQL.Add('     JOIN ( SELECT a.journal_,a.compte,');
      DaDeclVao.q_x_dcomm.SQL.Add('            a.compte_ AS tiers,');
      DaDeclVao.q_x_dcomm.SQL.Add('            a.montant AS compta');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM eltjrn_'+st_annee+' a');
      DaDeclVao.q_x_dcomm.SQL.Add('          WHERE a.compte > '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ '''');
      DaDeclVao.q_x_dcomm.SQL.Add('          AND a.compte < '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ 'Z''');
      if DaDeclVao.q_caneva_lst_comptejournal.Value>'' then
        DaDeclVao.q_x_dcomm.SQL.Add('          AND "left"(a.journal,2)='''+DaDeclVao.q_caneva_lst_comptejournal.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('         ) b ON x.journal_ = b.journal_');
      DaDeclVao.q_x_dcomm.SQL.Add('    WHERE x.compte_ IN (');
      DaDeclVao.q_x_dcomm.SQL.Add('           SELECT numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM numcpt_'+st_annee);
      DaDeclVao.q_x_dcomm.SQL.Add('           WHERE numcpt > '''+DaDeclVao.q_caneva_lst_comptecompte_de.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('           AND numcpt < '''+DaDeclVao.q_caneva_lst_comptecompte_a.Value+''')');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND b.compte=y.tiers');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(x.journal, 2) <> ''AN''');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(y.periode,4 )='''+st_annee+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('');
      DaDeclVao.q_x_dcomm.SQL.Add('    ) as c');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numcpt_'+st_annee+' d ON c.tiers = d.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numdiver_'+st_annee+' e ON d.numcpt_ = e.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numadres_'+st_annee+' f ON d.numcpt_ = f.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN lieu g ON f.cp= g.code');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_region h ON h.code = g.maitre');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_province i ON i.code = h.maitre');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN code_analytique j ON j.code=code_anal');
      DaDeclVao.q_x_dcomm.SQL.Add('  WHERE substring(c.tiers from 2 for 3)='''+st_agence+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('  ORDER BY d.intitule');
      Critere_date('Autres');
      DaDeclVao.q_x_dcomm.Open;
      sq_x_dcomm.DataSet := DaDeclVao.q_x_dcomm;
    end
    else
    begin
      DaDeclVao.q_x_dcomm_export.Close;
      DaDeclVao.q_caneva_lst_compte.Close;
      DaDeclVao.q_caneva_lst_compte.Parameters[0].Value :=  code_caneva;
      DaDeclVao.q_caneva_lst_compte.Open;
      DaDeclVao.caneva_dcomm.Locate('code',code_caneva,[]);
      DaDeclVao.q_x_dcomm.close;
      DaDeclVao.q_x_dcomm.SQL.Clear;
      DaDeclVao.q_x_dcomm.SQL.Add('SELECT');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.nif,');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.statistique,');
      DaDeclVao.q_x_dcomm.SQL.Add('    d.intitule AS rs,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.adresse,');
      DaDeclVao.q_x_dcomm.SQL.Add('    g.lieu,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.pays, libelle, --CASE WHEN libelle IS NULL  THEN libelle ELSE j.designation END AS libelle,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(comptabilisee) AS bigint) AS comptabilisee,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(versee) AS bigint) AS versee');
      DaDeclVao.q_x_dcomm.SQL.Add(' from');
      DaDeclVao.q_x_dcomm.SQL.Add('(SELECT b.tiers,libelle,substring(x.compte_,14,2) AS code_anal,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(b.compta) AS bigint) comptabilisee,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(b.compta) AS bigint) versee');
      DaDeclVao.q_x_dcomm.SQL.Add('   FROM eltjrn_'+st_annee+' AS x');
      DaDeclVao.q_x_dcomm.SQL.Add('   --join typprod on typx = nature');
      DaDeclVao.q_x_dcomm.SQL.Add('   join journal_'+st_annee+' y ON x.journal_=y.code_');
      DaDeclVao.q_x_dcomm.SQL.Add('     JOIN ( SELECT a.journal_,a.compte,');
      DaDeclVao.q_x_dcomm.SQL.Add('            a.compte_ AS tiers,');
      DaDeclVao.q_x_dcomm.SQL.Add('            CAST(sum(a.montant)AS bigint) AS compta');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM eltjrn_'+st_annee+' a');
      DaDeclVao.q_x_dcomm.SQL.Add('          WHERE a.compte > '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ '''');
      DaDeclVao.q_x_dcomm.SQL.Add('          AND a.compte < '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ 'Z''');
      if DaDeclVao.q_caneva_lst_comptejournal.Value>'' then
        DaDeclVao.q_x_dcomm.SQL.Add('          AND "left"(a.journal,2)='''+DaDeclVao.q_caneva_lst_comptejournal.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('          GROUP BY a.journal_, a.compte_, a.compte) b ON x.journal_ = b.journal_');
      DaDeclVao.q_x_dcomm.SQL.Add('    WHERE x.compte_ IN (');
      DaDeclVao.q_x_dcomm.SQL.Add('           SELECT numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM numcpt_'+st_annee);
      DaDeclVao.q_x_dcomm.SQL.Add('           WHERE numcpt > '''+DaDeclVao.q_caneva_lst_comptecompte_de.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('           AND numcpt < '''+DaDeclVao.q_caneva_lst_comptecompte_a.Value+''')');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND b.compte=y.tiers');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(x.journal, 2) <> ''AN''');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(y.periode,4 )='''+st_annee+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('');
      DaDeclVao.q_x_dcomm.SQL.Add('    GROUP BY b.tiers,libelle,substring(x.compte_,14,2) ) as c');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numcpt_'+st_annee+' d ON c.tiers = d.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numdiver_'+st_annee+' e ON d.numcpt_ = e.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numadres_'+st_annee+' f ON d.numcpt_ = f.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN lieu g ON f.cp= g.code');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_region h ON h.code = g.maitre');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_province i ON i.code = h.maitre');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN code_analytique j ON j.code=code_anal');
      DaDeclVao.q_x_dcomm.SQL.Add('  WHERE substring(c.tiers from 2 for 3)='''+st_agence+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('  GROUP BY e.nif, e.statistique, d.intitule, f.adresse, g.lieu, f.pays, libelle, designation');
      DaDeclVao.q_x_dcomm.SQL.Add('  ORDER BY d.intitule');
      Critere_date('Autres');
      DaDeclVao.q_x_dcomm.Open;
      sq_x_dcomm.DataSet := DaDeclVao.q_x_dcomm;
    end
  end;
end;



procedure TFCanevaDCOMM.Caneva_SVT(st_agence:string;detail:boolean);
begin
    if detail then
    begin
      DaDeclVao.q_x_dcomm_export.Close;
      DaDeclVao.q_caneva_lst_compte.Close;
      DaDeclVao.q_caneva_lst_compte.Parameters[0].Value :=  'SVT';
      DaDeclVao.q_caneva_lst_compte.Open;
      DaDeclVao.caneva_dcomm.Locate('code','SVT',[]);
      DaDeclVao.q_x_dcomm.close;
      DaDeclVao.q_x_dcomm.SQL.Clear;
      DaDeclVao.q_x_dcomm.SQL.Add('SELECT c.tiers_,substring(journal_ from 10 for 8) as journal, jour,');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.nif,');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.statistique,');
      DaDeclVao.q_x_dcomm.SQL.Add('    d.intitule AS rs,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.adresse,');
      DaDeclVao.q_x_dcomm.SQL.Add('    g.lieu,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.pays,');
      DaDeclVao.q_x_dcomm.SQL.Add('    libelle,0 as qte,montant as comptabilisee,montant as versee --produit,');
      DaDeclVao.q_x_dcomm.SQL.Add(' FROM (');


      DaDeclVao.q_x_dcomm.SQL.Add(' SELECT tiers_ ,montant, a.libelle, journal_, jour');
      DaDeclVao.q_x_dcomm.SQL.Add(' FROM eltjrn_'+st_annee+' join journal_'+st_annee+' on code_ = journal_');
      DaDeclVao.q_x_dcomm.SQL.Add(' JOIN (');
      DaDeclVao.q_x_dcomm.SQL.Add('   SELECT code, nature,max(famille) libelle');
      DaDeclVao.q_x_dcomm.SQL.Add('   FROM typprod');
      DaDeclVao.q_x_dcomm.SQL.Add('   WHERE code = ''PS''');
      DaDeclVao.q_x_dcomm.SQL.Add('   GROUP BY code, nature');
      DaDeclVao.q_x_dcomm.SQL.Add(' ) as a on typx= nature');
      DaDeclVao.q_x_dcomm.SQL.Add(' WHERE compte >''6''');
      DaDeclVao.q_x_dcomm.SQL.Add(' AND typx <>''00''');
      DaDeclVao.q_x_dcomm.SQL.Add(' AND "left"(journal, 2) <> ''AN''');
      DaDeclVao.q_x_dcomm.SQL.Add(' AND "left"(periode,4 )='''+st_annee+'''');


      {DaDeclVao.q_x_dcomm.SQL.Add('(SELECT b.tiers, libelle,qte,substring(x.compte_,14,2) AS code_anal,x.journal_, y.jour,--famille2 as produit,');
      DaDeclVao.q_x_dcomm.SQL.Add('    b.compta AS comptabilisee,');
      DaDeclVao.q_x_dcomm.SQL.Add('    b.compta AS versee');
      DaDeclVao.q_x_dcomm.SQL.Add('   FROM eltjrn_'+st_annee+' AS x');
      //if detail then
      DaDeclVao.q_x_dcomm.SQL.Add(' -- left join (SELECT nature , max(famille) as famille2 FROM typprod group by nature) AS  t on typx = nature');
      DaDeclVao.q_x_dcomm.SQL.Add('   join journal_'+st_annee+' y ON x.journal_=y.code_');
      DaDeclVao.q_x_dcomm.SQL.Add('     JOIN ( SELECT a.journal_,a.compte,');
      DaDeclVao.q_x_dcomm.SQL.Add('            a.compte_ AS tiers,');
      DaDeclVao.q_x_dcomm.SQL.Add('            a.montant AS compta');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM eltjrn_'+st_annee+' a');
      DaDeclVao.q_x_dcomm.SQL.Add('          WHERE a.compte > '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ '''');
      DaDeclVao.q_x_dcomm.SQL.Add('          AND a.compte < '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ 'Z''');
      if DaDeclVao.q_caneva_lst_comptejournal.Value>'' then
        DaDeclVao.q_x_dcomm.SQL.Add('          AND "left"(a.journal,2)='''+DaDeclVao.q_caneva_lst_comptejournal.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('         ) b ON x.journal_ = b.journal_');
      DaDeclVao.q_x_dcomm.SQL.Add('    WHERE x.compte_ IN (');
      DaDeclVao.q_x_dcomm.SQL.Add('           SELECT numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM numcpt_'+st_annee);
      DaDeclVao.q_x_dcomm.SQL.Add('           WHERE numcpt > '''+DaDeclVao.q_caneva_lst_comptecompte_de.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('           AND numcpt < '''+DaDeclVao.q_caneva_lst_comptecompte_a.Value+''')');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND b.compte=y.tiers');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(x.journal, 2) <> ''AN''');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(y.periode,4 )='''+st_annee+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('');
      }


      DaDeclVao.q_x_dcomm.SQL.Add('    ) as c');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numcpt_'+st_annee+' d ON c.tiers_ = d.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numdiver_'+st_annee+' e ON d.numcpt_ = e.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numadres_'+st_annee+' f ON d.numcpt_ = f.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN lieu g ON f.cp= g.code');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_region h ON h.code = g.maitre');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_province i ON i.code = h.maitre');
      //DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN code_analytique j ON j.code=code_anal');
      DaDeclVao.q_x_dcomm.SQL.Add('  WHERE substring(c.tiers_ from 2 for 3)='''+st_agence+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ORDER BY d.intitule');
      Critere_date('SVT');
      DaDeclVao.q_x_dcomm.Open;
      sq_x_dcomm.DataSet := DaDeclVao.q_x_dcomm;
    end
    else
    begin
      DaDeclVao.q_x_dcomm_export.Close;
      DaDeclVao.q_caneva_lst_compte.Close;
      DaDeclVao.q_caneva_lst_compte.Parameters[0].Value :=  'SVT';
      DaDeclVao.q_caneva_lst_compte.Open;
      DaDeclVao.caneva_dcomm.Locate('code','SVT',[]);
      DaDeclVao.q_x_dcomm.close;
      DaDeclVao.q_x_dcomm.SQL.Clear;
      DaDeclVao.q_x_dcomm.SQL.Add('SELECT');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.nif,');
      DaDeclVao.q_x_dcomm.SQL.Add('    e.statistique,');
      DaDeclVao.q_x_dcomm.SQL.Add('    d.intitule AS rs,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.adresse,');
      DaDeclVao.q_x_dcomm.SQL.Add('    g.lieu,');
      DaDeclVao.q_x_dcomm.SQL.Add('    f.pays, libelle, --CASE WHEN libelle IS NULL  THEN libelle ELSE j.designation END AS libelle,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(montant) AS bigint) AS comptabilisee,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(montant) AS bigint) AS versee');
      //DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(comptabilisee) AS bigint) AS comptabilisee,');
      //DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(versee) AS bigint) AS versee');
      DaDeclVao.q_x_dcomm.SQL.Add(' FROM (');

      DaDeclVao.q_x_dcomm.SQL.Add(' SELECT tiers_ ,montant, a.libelle, journal_, jour');
      DaDeclVao.q_x_dcomm.SQL.Add(' FROM eltjrn_'+st_annee+' join journal_'+st_annee+' on code_ = journal_');
      DaDeclVao.q_x_dcomm.SQL.Add(' JOIN (');
      DaDeclVao.q_x_dcomm.SQL.Add('   SELECT code, nature,max(famille) libelle');
      DaDeclVao.q_x_dcomm.SQL.Add('   FROM typprod');
      DaDeclVao.q_x_dcomm.SQL.Add('   WHERE code = ''PS''');
      DaDeclVao.q_x_dcomm.SQL.Add('   GROUP BY code, nature');
      DaDeclVao.q_x_dcomm.SQL.Add(' ) as a on typx= nature');
      DaDeclVao.q_x_dcomm.SQL.Add(' WHERE compte >''6''');
      DaDeclVao.q_x_dcomm.SQL.Add(' AND typx <>''00''');
      DaDeclVao.q_x_dcomm.SQL.Add(' AND "left"(journal, 2) <> ''AN''');
      DaDeclVao.q_x_dcomm.SQL.Add(' AND "left"(periode,4 )='''+st_annee+'''');

      {
      DaDeclVao.q_x_dcomm.SQL.Add('(SELECT b.tiers,libelle,substring(x.compte_,14,2) AS code_anal,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(b.compta) AS bigint) comptabilisee,');
      DaDeclVao.q_x_dcomm.SQL.Add('    CAST(SUM(b.compta) AS bigint) versee');
      DaDeclVao.q_x_dcomm.SQL.Add('   FROM eltjrn_'+st_annee+' AS x');
      DaDeclVao.q_x_dcomm.SQL.Add('   --join typprod on typx = nature');
      DaDeclVao.q_x_dcomm.SQL.Add('   join journal_'+st_annee+' y ON x.journal_=y.code_');
      DaDeclVao.q_x_dcomm.SQL.Add('     JOIN ( SELECT a.journal_,a.compte,');
      DaDeclVao.q_x_dcomm.SQL.Add('            a.compte_ AS tiers,');
      DaDeclVao.q_x_dcomm.SQL.Add('            CAST(sum(a.montant)AS bigint) AS compta');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM eltjrn_'+st_annee+' a');
      DaDeclVao.q_x_dcomm.SQL.Add('          WHERE a.compte > '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ '''');
      DaDeclVao.q_x_dcomm.SQL.Add('          AND a.compte < '''+DaDeclVao.q_caneva_lst_comptecontre_partie1.Value+ 'Z''');
      if DaDeclVao.q_caneva_lst_comptejournal.Value>'' then
        DaDeclVao.q_x_dcomm.SQL.Add('          AND "left"(a.journal,2)='''+DaDeclVao.q_caneva_lst_comptejournal.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('          GROUP BY a.journal_, a.compte_, a.compte) b ON x.journal_ = b.journal_');
      DaDeclVao.q_x_dcomm.SQL.Add('    WHERE x.compte_ IN (');
      DaDeclVao.q_x_dcomm.SQL.Add('           SELECT numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('           FROM numcpt_'+st_annee);
      DaDeclVao.q_x_dcomm.SQL.Add('           WHERE numcpt > '''+DaDeclVao.q_caneva_lst_comptecompte_de.Value+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('           AND numcpt < '''+DaDeclVao.q_caneva_lst_comptecompte_a.Value+''')');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND b.compte=y.tiers');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(x.journal, 2) <> ''AN''');
      DaDeclVao.q_x_dcomm.SQL.Add('    AND "left"(y.periode,4 )='''+st_annee+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('');
      DaDeclVao.q_x_dcomm.SQL.Add('    GROUP BY b.tiers,libelle,substring(x.compte_,14,2)');
      }

      DaDeclVao.q_x_dcomm.SQL.Add(') as c');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numcpt_'+st_annee+' d ON c.tiers_ = d.numcpt_');
      //DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numcpt_'+st_annee+' d ON c.tiers = d.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numdiver_'+st_annee+' e ON d.numcpt_ = e.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN numadres_'+st_annee+' f ON d.numcpt_ = f.numcpt_');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN lieu g ON f.cp= g.code');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_region h ON h.code = g.maitre');
      DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN pa_province i ON i.code = h.maitre');
      //DaDeclVao.q_x_dcomm.SQL.Add('  LEFT JOIN code_analytique j ON j.code=code_anal');
      DaDeclVao.q_x_dcomm.SQL.Add('  WHERE substring(c.tiers_ from 2 for 3)='''+st_agence+'''');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  ');
      DaDeclVao.q_x_dcomm.SQL.Add('  GROUP BY e.nif, e.statistique, d.intitule, f.adresse, g.lieu, f.pays, libelle');
      DaDeclVao.q_x_dcomm.SQL.Add('  ORDER BY d.intitule');
      Critere_date('SVT');
      DaDeclVao.q_x_dcomm.Open;
      sq_x_dcomm.DataSet := DaDeclVao.q_x_dcomm;
    end
end;

procedure TFCanevaDCOMM.Critere_date(code_caneva:string);
var y1,m1,d1, y2,m2,d2 : word;
  periode,periode_de,periode_a :string;
  index_critere:integer;
  q:TADOQuery;
begin

  if code_caneva='PLP' then
  begin
    index_critere:= DaDeclVao.q_x_dcomm_plp.SQL.Count-2;
    q:=DaDeclVao.q_x_dcomm_plp;
    periode:='substring(journal_ from 12 for 2)||TRIM(to_char(jour,''00''))';
  end
  else if (code_caneva='MV')  then
  begin
    index_critere:= -1; // 32 OU 31
    //index_critere:= DaDeclVao.q_x_dcomm_export.SQL.Count-1; // 32 OU 31
    q:=DaDeclVao.q_x_dcomm_export;
    periode:='substring(journal_ from 12 for 2)||TRIM(to_char(jour,''00''))';
  end
  else if (code_caneva='SVT') then
  begin
    index_critere:=31;
    q:=DaDeclVao.q_x_dcomm;
    periode:='substring(journal_ from 12 for 2)||TRIM(to_char(jour,''00''))'
  end
  else
  begin
    //if DaDeclVao.q_x_dcomm.SQL[31] >'' then
      //index_critere:=30
    //else
      index_critere:=31;
    //DaDeclVao.q_x_dcomm.SQL.Count-1; // 32 OU 31
    q:=DaDeclVao.q_x_dcomm;
    periode:='substring(x.journal_ from 12 for 2)||TRIM(to_char(jour,''00''))';
  end;
  DecodeDate(DateTimePicker1.Date,y1,m1,d1);
  periode_de:= FormatFloat('00',m1)+FormatFloat('00',d1);
  DecodeDate(DateTimePicker2.Date,y2,m2,d2);
  periode_a:= FormatFloat('00',m2)+FormatFloat('00',d2);
  q.close;
  //ShowMessage(intToStr(index_critere));
  Memo1.Lines := q.SQL;
  if index_critere = -1 then
    q.SQL.Add(' AND ' +periode +'>='' ' +periode_de +''' AND ' +periode +'<=''' +periode_a +'''')
  else
  begin
    if detail then
      q.SQL[index_critere-1]:= '  AND ' +periode +'>='' ' +periode_de +''' AND ' +periode +'<=''' +periode_a +''''
    else
      q.SQL[index_critere]:= '  AND ' +periode +'>='' ' +periode_de +''' AND ' +periode +'<=''' +periode_a +'''';
  end;
  Memo1.Lines := q.SQL;
  //Memo1.Lines.Add('--'+q.SQL[index_critere]);
  q.Open;
end;

procedure TFCanevaDCOMM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FCanevaDCOMM := nil;
end;

procedure TFCanevaDCOMM.SpeedButton3Click(Sender: TObject);
begin
  DaConnect.SortieExcel(DaDeclVao.q_x_dcomm);
end;

procedure TFCanevaDCOMM.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid3.DataSource.DataSet.RecNo mod 2=0 then
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$00CFDECB;
  end;
  DBGrid3.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFCanevaDCOMM.PageControl1Change(Sender: TObject);
begin
  if agence=210 then
    PageControl2.ActivePage := TabTamatave
  else
    PageControl2.ActivePage := TabDiego;
  Caneva_Change(PageControl1.ActivePage.Name,IntToStr(agence));
  //showMessage(PageControl1.ActivePage.Name);
end;

procedure TFCanevaDCOMM.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid2.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid2.Canvas.Brush.Color=Dbgrid2.Color then
          Dbgrid2.Canvas.Brush.Color:=$00FFFECB;
     end;
   DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFCanevaDCOMM.SpeedButton8Click(Sender: TObject);
begin
  if PageControl1.ActivePage.Name='MV' then
    DaConnect.SortieExcel(DaDeclVao.q_x_dcomm_export)
  else if PageControl1.ActivePage.Name='PLP' then
    DaConnect.SortieExcel(DaDeclVao.q_x_dcomm_plp)
  else
    DaConnect.SortieExcel(DaDeclVao.q_x_dcomm)
end;

procedure TFCanevaDCOMM.SpeedButton9Click(Sender: TObject);
begin
  if PageControl1.ActivePage.Name='PLP' then
  begin
    if detail then
      AsehoyEtatDeclare(9,0,false,PageControl1.ActivePage.Caption)
    else
      AsehoyEtatDeclare(8,0,false,PageControl1.ActivePage.Caption)
  end
  else
  begin
    if detail then
      AsehoyEtatDeclare(7,0,false,PageControl1.ActivePage.Caption)
    else
      AsehoyEtatDeclare(5,0,false,PageControl1.ActivePage.Caption)
  end;
end;

procedure TFCanevaDCOMM.SpeedButton10Click(Sender: TObject);
begin
  Close;
end;

procedure TFCanevaDCOMM.PageControl2Change(Sender: TObject);
begin
  DaDeclVao.q_x_dcomm.close;
  case PageControl2.ActivePageIndex of
    0:  DaDeclVao.q_x_dcomm.SQL[DaDeclVao.q_x_dcomm.SQL.Count-1]:='';
    1:
      begin
        DaDeclVao.q_x_dcomm_plp.SQL[7]:='WHERE substring(journal_ from 2 for 3)=''210''';
        DaDeclVao.q_x_dcomm.SQL[DaDeclVao.q_x_dcomm.SQL.Count-1]:='WHERE substring(c.tiers from 2 for 3)=''210''';
      end;
    2:
      begin
        DaDeclVao.q_x_dcomm_plp.SQL[7]:='WHERE substring(journal_ from 2 for 3)=''311''';
        DaDeclVao.q_x_dcomm.SQL[DaDeclVao.q_x_dcomm.SQL.Count-1]:='WHERE substring(c.tiers from 2 for 3)=''311''';
      end;
  end;
  DaDeclVao.q_x_dcomm.open;
end;

procedure TFCanevaDCOMM.CheckConsoClick(Sender: TObject);
begin
  MontrerConsolide(CheckConso.Checked);
end;

procedure TFCanevaDCOMM.sq_x_dcommDataChange(Sender: TObject;
  Field: TField);
begin
  if GroupDetail.Visible then
    OuvrirDetail(DaDeclVao.q_x_dcomm.FieldValues['journal_']);
end;

procedure TFCanevaDCOMM.OuvrirDetail(journal_:string);
begin
  DaDeclVao.q_x_dcomm_detail.Close;
  DaDeclVao.q_x_dcomm_detail.SQL.clear;
  DaDeclVao.q_x_dcomm_detail.SQL.Add('SELECT *');
  DaDeclVao.q_x_dcomm_detail.SQL.Add('FROM eltjrn_'+st_annee);
  DaDeclVao.q_x_dcomm_detail.SQL.Add('WHERE journal_='''+journal_+'''');
  DaDeclVao.q_x_dcomm_detail.Open;
end;

procedure TFCanevaDCOMM.SpeedButton4Click(Sender: TObject);
begin
  if SpeedButton4.Caption<> 'Cacher détail' then
  begin
    GroupDetail.Visible := True;
    SpeedButton4.Caption :='Cacher détail';
    OuvrirDetail(DaDeclVao.q_x_dcomm.FieldValues['journal_']);
  end
  else
  begin
    SpeedButton4.Caption :='Voir détail';
    GroupDetail.Visible := False;
  end;
end;

procedure TFCanevaDCOMM.SpeedButton5Click(Sender: TObject);
begin
  Critere_date(PageControl1.ActivePage.Name);
end;


end.
