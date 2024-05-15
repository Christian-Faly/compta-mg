unit TVAExcel_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, DB, comObj,
  ComCtrls, ADODB;

type
  TFTVAExcel = class(TForm)
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    SpeedButton3: TSpeedButton;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    SpeedButton4: TSpeedButton;
    LabelPeriode: TLabel;
    DBNavigator2: TDBNavigator;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    s_tva_compte: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    GroupBoxCondition: TGroupBox;
    DBGrid4: TDBGrid;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel1: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    UpDown1: TUpDown;
    Edit4: TEdit;
    UpDown2: TUpDown;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    TabTamatave: TTabSheet;
    TabDiego: TTabSheet;
    Label4: TLabel;
    UpDown3: TUpDown;
    Edit1: TEdit;
    sq_TVAexcel_NumLigne: TDataSource;
    DBEdit6: TDBEdit;
    CheckConsolide: TCheckBox;
    PageControl2: TPageControl;
    TabTVA: TTabSheet;
    TabTiers210: TTabSheet;
    TabTiers311: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    TabAnnexe210: TTabSheet;
    DBGrid7: TDBGrid;
    TabAnnexe311: TTabSheet;
    DBGrid8: TDBGrid;
    TabAnnexeConso: TTabSheet;
    DBGrid9: TDBGrid;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    DBNavigator3: TDBNavigator;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    CheckDetail: TCheckBox;
    s_tva_excel: TDataSource;
    RadioTypeAnnexe: TRadioGroup;
    SpeedButton11: TSpeedButton;
    Memo1: TMemo;
    Memo2: TMemo;
    SpeedButton12: TSpeedButton;
    ADOQuery1: TADOQuery;
    CheckEcriture: TCheckBox;
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure s_tva_compteDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure sq_TVAexcel_NumLigneDataChange(Sender: TObject;
      Field: TField);
    procedure Edit1Change(Sender: TObject);
    procedure CheckConsolideClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure s_tva_excelDataChange(Sender: TObject; Field: TField);
    procedure CheckDetailClick(Sender: TObject);
    procedure RadioTypeAnnexeClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure CheckEcritureClick(Sender: TObject);
  private
    { Private declarations }
    procedure Ouvrir;
    procedure RequeryPeriode;
    procedure Calculer(niveau:word);
    function DatePeriode(Daty:TDate):string;
    function MoisPeriode(mois, annee:string):string;
    procedure MontrerConsolide(Oui:boolean);
    procedure AfficherSQLParam(lines:TStrings;q:TADOQuery);
  public
    { Public declarations }
  end;

var
  FTVAExcel: TFTVAExcel;

procedure AsehoyTVAExcel;

implementation

uses Daspecia, EtatDeclare_U, DaDeclVao_U, DaCommun, UConnect, informat;

{$R *.dfm}

procedure AsehoyTVAExcel;
begin
  if FTVAExcel = nil then
    FTVAExcel := TFTVAExcel.Create(Application)
  else
    FTVAExcel.WindowState := wsMaximized;
  FTVAExcel.Ouvrir;
end;

procedure TFTVAExcel.Ouvrir;
begin
  DaDeclVao.tva_excel.Open;
  DaDeclVao.tva_compte.Open;
  DaDeclVao.tva_condition.Open;
  MontrerConsolide(False);
  PageControl2.ActivePageIndex:=0;
end;

procedure TFTVAExcel.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='0' then
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$00D6D6D6;
  end;
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='2' then
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$0098F0F8;
  end;
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='3' then
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$00A2F9D6;
  end;
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='4' then
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$00FACAB8;
  end;
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='5' then // non active
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$009BB8FB;//$00CCC7FC;
  end;
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='6' then // non active
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$00CC7FCC;
  end;
  if  DBGrid3.DataSource.DataSet.FieldValues['niveau_calc'] ='7' then // non active
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$009A8BEB;//$00CCC7FC;
  end;
  DBGrid3.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFTVAExcel.SpeedButton2Click(Sender: TObject);
begin
  DaDeclVao.tva_compte.Requery;
end;

procedure TFTVAExcel.SpeedButton4Click(Sender: TObject);
var niveau:integer;
begin
  FInformat.Asehoy('Calcul en cours ',' PATIENTEZ...',1000000);
  GroupBox1.Visible := False;
  s_tva_compte.DataSet := Nil;
  DaDeclVao.s_tva_excel.DataSet:= Nil;
  for niveau:=1 to 7 do
  begin
    calculer(niveau);
    RequeryPeriode;
  end;
  DaDeclVao.s_tva_excel.DataSet:= DaDeclVao.tva_excel;
  s_tva_compte.DataSet := DaDeclVao.tva_compte;
  FInformat.close;
end;

procedure TFTVAExcel.Calculer(niveau:word);
var total,t_tamatave,t_diego, montant, m_tamatave,m_diego : real;
begin
  DaDeclVao.tva_excel.First;
  while not DaDeclVao.tva_excel.Eof do
  begin
    if niveau<> DaDeclVao.tva_excelniveau_calc.Value then
    begin
      DaDeclVao.tva_excel.Next;
      continue;
      // raison = presence desable controle
    end;
    DaDeclVao.q_tva_montant.Close;
    DaDeclVao.q_tva_montant.Parameters[0].Value := DaDeclVao.tva_excelnum_ligne.Value ;
    DaDeclVao.q_tva_montant.Open;

    DaDeclVao.tva_compte.Close;
    DaDeclVao.tva_compte.Parameters[0].Value := DaDeclVao.tva_excelnum_ligne.Value;
    DaDeclVao.tva_compte.Open;

    DaDeclVao.tva_condition.Close;
    DaDeclVao.tva_condition.Parameters[0].Value := DaDeclVao.tva_excelnum_ligne.Value ;
    DaDeclVao.tva_condition.Open;

    DaDeclVao.q_tva_montant.Edit;
    if DaDeclVao.tva_exceltypa.Value = 'Ligne' then
    begin
      //tal:= floatTostr(DaDeclVao.q_tva_montantmontant.Value);
      DaDeclVao.q_tva_montanttamatave.value := DaDeclVao.tva_excelstamatave.Value;
      DaDeclVao.q_tva_montantdiego.value := DaDeclVao.tva_excelsdiego.Value;
      DaDeclVao.q_tva_montantmontant.value := DaDeclVao.tva_excelsmontant.Value;
    end
    else if DaDeclVao.tva_exceltypa.Value = 'Total' then
    begin
      //if DaDeclVao.tva_excelniveau_calc.Value=6 then
        //showMessage(IntToStr(DaDeclVao.tva_excelnum_ligne.Value));
      //if (DaDeclVao.tva_condition.Eof) OR DaDeclVao.tva_conditionresultat.Value then
      begin
        //if DaDeclVao.tva_excelniveau_calc.Value=6 then
          //showMessage(IntToStr(DaDeclVao.tva_excelnum_ligne.Value));
        total:=0;
        t_tamatave:=0;
        t_diego:=0;
        DaDeclVao.tva_compte.First;
        while not DaDeclVao.tva_compte.Eof do
        begin

//if DaDeclVao.tva_compteMontant.Value<>0 then
          //begin
            if copy(DaDeclVao.tva_comptecompte_lign.Value,1,1)='c' then
            begin
              montant := StrToInt(copy(DaDeclVao.tva_comptecompte_lign.Value,2,100));
              m_tamatave := montant;
              m_diego := montant;
            end
            else
            begin
              montant := DaDeclVao.tva_compteMontant.Value;
              m_tamatave := DaDeclVao.tva_comptetamatave.Value;
              m_diego := DaDeclVao.tva_comptediego.Value;
            end;
            if DaDeclVao.tva_comptesigne.Value = '+' then
            begin
              total:= total + montant;
              t_tamatave:=t_tamatave + m_tamatave;
              t_diego:=t_diego + m_diego;
            end
            else if DaDeclVao.tva_comptesigne.Value = '-' then
            begin
              total:=total - montant;
              t_tamatave:=t_tamatave - m_tamatave;
              t_diego:=t_diego - m_diego;
            end
            else if DaDeclVao.tva_comptesigne.Value = '*' then
            begin
              total:=total * montant;
              t_tamatave:=t_tamatave * m_tamatave;
              t_diego:=t_diego * m_diego;
            end
            else if DaDeclVao.tva_comptesigne.Value = '/' then
            begin
              total:= total / montant;
              t_tamatave:=t_tamatave / m_tamatave;
              t_diego:=t_diego / m_diego;
            end;

          //end;
          DaDeclVao.tva_compte.Next;
        end;
        if t_tamatave+t_diego > 0 then
          DaDeclVao.q_tva_montantmontant.value := round(t_tamatave+t_diego)
        else
          DaDeclVao.q_tva_montantmontant.value :=0;

        if t_tamatave > 0 then
          DaDeclVao.q_tva_montanttamatave.value := round(t_tamatave)
        else
          DaDeclVao.q_tva_montanttamatave.value :=0;

        if t_diego > 0 then
          DaDeclVao.q_tva_montantdiego.value := round(t_diego)
         else
          DaDeclVao.q_tva_montantdiego.value :=0;
        //break;
      end
      //else
        //DaDeclVao.q_tva_montantmontant.value := 0;
    end;
    DaDeclVao.q_tva_montant.Post;
    DaDeclVao.tva_excel.Next;
  end;
end;

procedure TFTVAExcel.RequeryPeriode;
begin
  // Pour enregistrer la calcule

  PageControl2.ActivePageIndex := 0;
  DaDeclVao.q_tva_montant.Close;
  DaDeclVao.q_tva_montant.Parameters[1].Value := LabelPeriode.Caption ;
  DaDeclVao.q_tva_montant.Parameters[2].Value := LabelPeriode.Caption+'Z' ;
  DaDeclVao.q_tva_montant.Open;

  // Pour afficher le resutat déjà enregistré par période
  DaDeclVao.q_tva_montant_periode.Close;
  DaDeclVao.q_tva_montant_periode.Parameters[0].Value := LabelPeriode.Caption ;
  DaDeclVao.q_tva_montant_periode.Parameters[1].Value := LabelPeriode.Caption+'Z' ;
  DaDeclVao.q_tva_montant_periode.Open;

  // Montant par rapport au paramètre compte
  DaDeclVao.q_Montant_tva_compte.Close;
  DaDeclVao.q_Montant_tva_compte.Parameters[0].Value := LabelPeriode.Caption;
  DaDeclVao.q_Montant_tva_compte.Parameters[1].Value := LabelPeriode.Caption+'Z';
  DaDeclVao.q_Montant_tva_compte.Open;

  DaDeclVao.q_tva_detail_compte.Close;
  DaDeclVao.q_tva_detail_compte.Parameters[0].Value := LabelPeriode.Caption;
  DaDeclVao.q_tva_detail_compte.Parameters[1].Value := LabelPeriode.Caption+'Z';
  DaDeclVao.q_tva_detail_compte.Open;

  // détail pour le total
  DaDeclVao.tva_compte.Close;
  DaDeclVao.tva_compte.Open;
  DaDeclVao.tva_condition.Close;
  DaDeclVao.tva_condition.Open;

  // caneva excel
  DaDeclVao.tva_excel.Close;
  DaDeclVao.tva_excel.Parameters[0].Value := LabelPeriode.Caption;
  DaDeclVao.tva_excel.Parameters[1].Value := LabelPeriode.Caption+'Z';
  DaDeclVao.tva_excel.Open;
end;

procedure TFTVAExcel.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (DBGrid1.DataSource.DataSet.FieldByName('compte').AsString >'') and
      (copy(DBGrid1.DataSource.DataSet.FieldValues['compte'],1,length(DaDeclVao.tva_comptecompte_lign.Value)) = DaDeclVao.tva_comptecompte_lign.Value) AND
      ((DaDeclVao.tva_comptesigne.value = '+')or(DaDeclVao.tva_comptesigne.Value ='-') or
       ((DaDeclVao.tva_comptesigne.Value = '*')and (DBGrid1.DataSource.DataSet.FieldValues['debit']>0)) or
       ((DaDeclVao.tva_comptesigne.Value = '/')and (DBGrid1.DataSource.DataSet.FieldValues['credit']>0))) then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00A6EBEE;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFTVAExcel.s_tva_compteDataChange(Sender: TObject; Field: TField);
begin
  DaDeclVao.q_tva_detail_compte.Close;
  if (DaDeclVao.tva_exceltypa.Value = 'Ligne') then
  begin
    GroupBoxCondition.Visible := False;
    Label1.Caption := 'Compte';
    DBRadioGroup1.Caption := 'Type compte';
    DBRadioGroup1.Items[0]:='Débiteur';
    DBRadioGroup1.Items[1]:='Créditeur';
    DBRadioGroup1.Items[2]:='Débit seul';
    DBRadioGroup1.Items[3]:='Crédit seul';
    if (DaDeclVao.tva_comptecompte_lign.Value>'0') then
    begin
      DBGrid2.Align := AlTop;
      DBGrid2.Height := 150;
      GroupBox4.Align := AlClient;
      GroupBox4.Visible := True;
      DaDeclVao.q_tva_detail_compte.Parameters[2].Value := DaDeclVao.tva_comptecompte_lign.Value;
      DaDeclVao.q_tva_detail_compte.Parameters[3].Value := DaDeclVao.tva_comptecompte_lign.Value;
      DaDeclVao.q_tva_detail_compte.Parameters[4].Value := DaDeclVao.tva_comptetaxe.Value;
      DaDeclVao.q_tva_detail_compte.Parameters[5].Value := DaDeclVao.tva_comptetaxe.Value;
      DaDeclVao.q_tva_detail_compte.Parameters[6].Value := DaDeclVao.tva_comptetaxe.Value;
      case PageControl1.ActivePageIndex of
        0:DaDeclVao.q_tva_detail_compte.Parameters[7].Value := 's210';
        1:DaDeclVao.q_tva_detail_compte.Parameters[7].Value := 's311';
      end;
      DaDeclVao.q_tva_detail_compte.Open;
    end
    else
    begin
      DBGrid2.Align := AlClient;
      GroupBox4.Visible := False;
    end;
  end
  else
  begin
    GroupBoxCondition.Visible := True;
    DBGrid2.Align := AlClient;
    GroupBox4.Visible := False;
    Label1.Caption := 'N°Ligne';
    DBRadioGroup1.Caption := 'Signe';
    DBRadioGroup1.Items[0]:='Plus';
    DBRadioGroup1.Items[1]:='Moins';
    DBRadioGroup1.Items[2]:='Moltiolication';
    DBRadioGroup1.Items[3]:='Division';
  end;
end;

procedure TFTVAExcel.SpeedButton3Click(Sender: TObject);
begin
  DaConnect.SortieExcel(DaDeclVao.q_tva_detail_compte);
end;

procedure TFTVAExcel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FTVAExcel := nil;
end;

procedure TFTVAExcel.SpeedButton6Click(Sender: TObject);
begin
  if SpeedButton6.Caption = 'Voir Détail' then
  begin
    GroupBox1.Visible := True;
    SpeedButton6.Caption := 'Cacher Détail';
  end
  else
  begin
    GroupBox1.Visible := False;
    SpeedButton6.Caption := 'Voir Détail';
  end
end;

procedure TFTVAExcel.SpeedButton7Click(Sender: TObject);
begin
  GroupBox1.Visible := False;
end;

procedure TFTVAExcel.SpeedButton9Click(Sender: TObject);
var agence:integer;
begin
  if CheckConsolide.Checked then
    agence:=0
  else
    agence := StrToInt(copy(commun.SocieteChemin.Value,2,3));
  if PageControl2.ActivePage = TabTVA then
    AsehoyEtatDeclare(1,agence,False,'')
  else if (PageControl2.ActivePage = TabTiers210) or
          (PageControl2.ActivePage = TabTiers311) then
    AsehoyEtatDeclare(2,0,false,'')
  else if (PageControl2.ActivePage = TabAnnexe210) or
          (PageControl2.ActivePage = TabAnnexe311) then
    AsehoyEtatDeclare(4,0,checkDetail.checked,'')
  else if PageControl2.ActivePage = TabAnnexeConso then
    AsehoyEtatDeclare(3,0,False,'');
end;

procedure TFTVAExcel.SpeedButton10Click(Sender: TObject);
begin
  Close;
end;

procedure TFTVAExcel.Edit4Change(Sender: TObject);
begin
  case StrToInt(Edit4.Text) of
     1: Label8.Caption := 'Janvier';
     2: Label8.Caption := 'Février';
     3: Label8.Caption := 'Mars';
     4: Label8.Caption := 'Avril';
     5: Label8.Caption := 'Mai';
     6: Label8.Caption := 'Juin';
     7: Label8.Caption := 'Juillet';
     8: Label8.Caption := 'Août';
     9: Label8.Caption := 'Septembre';
    10: Label8.Caption := 'Octobre';
    11: Label8.Caption := 'Novembre';
    12: Label8.Caption := 'Décembre';
  end;
  MoisPeriode(Edit4.text,Edit3.text);
  try
  RequeryPeriode;
  except
  end;
end;

procedure TFTVAExcel.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DatePeriode(Date);
end;

function TFTVAExcel.DatePeriode(Daty:TDate):string;
var y,m,d:word;
begin
  DecodeDate(daty,y,m,d);
  Edit4.Text := FormatFloat('00',m);
  Edit3.Text := IntToStr(y);
  LabelPeriode.Caption := Edit3.Text+'/'+Edit4.Text;
end;

function TFTVAExcel.MoisPeriode(mois,annee:string):string;
begin
  try
    LabelPeriode.Caption := annee+'/'+FormatFloat('00', StrToInt(mois));
  except
    LabelPeriode.Caption :='';
  end;
end;

procedure TFTVAExcel.SpeedButton8Click(Sender: TObject);
begin
  if PageControl2.ActivePage = TabTVA then
    DaConnect.SortieExcel(DaDeclVao.tva_excel)
  else if (PageControl2.ActivePage = TabTiers210) or
          (PageControl2.ActivePage = TabTiers311) then
    DaConnect.SortieExcel(DaDeclVao.q_ListeTiers)
  else if (PageControl2.ActivePage = TabAnnexe210) or
          (PageControl2.ActivePage = TabAnnexe311) or
          (PageControl2.ActivePage = TabAnnexeConso)  then
    DaConnect.SortieExcel(DaDeclVao.q_AnnexeTVA);
end;

procedure TFTVAExcel.Edit3Change(Sender: TObject);
begin
  MoisPeriode(Edit4.Text,Edit3.Text);
  TRY
  RequeryPeriode;
  except
  end;
end;

procedure TFTVAExcel.DateTimePicker1Change(Sender: TObject);
begin
  DatePeriode(DateTimePicker1.Date);
end;

procedure TFTVAExcel.PageControl1Change(Sender: TObject);
begin
  DaDeclVao.q_tva_detail_compte.Close;
  case PageControl1.ActivePageIndex of
    0:DaDeclVao.q_tva_detail_compte.Parameters[7].Value := 's210';
    1:DaDeclVao.q_tva_detail_compte.Parameters[7].Value := 's311';
  end;
  DaDeclVao.q_tva_detail_compte.Open;
end;

procedure TFTVAExcel.sq_TVAexcel_NumLigneDataChange(Sender: TObject;
  Field: TField);
begin
//  if Special.q_TVAexcel_NumLigne.State = dsBrowse then
  //  edit1.Text := IntToStr(Special.q_TVAexcel_NumLigneniveau_calc.value);
end;

procedure TFTVAExcel.Edit1Change(Sender: TObject);
begin
//  if Special.q_TVAexcel_NumLigne.State = dsBrowse then
  //begin
    //Special.q_TVAexcel_NumLigne.Edit;
//    Special.q_TVAexcel_NumLigneniveau_calc.value := StrToInt(edit1.Text);
  //end;
end;

procedure TFTVAExcel.CheckConsolideClick(Sender: TObject);
begin
  MontrerConsolide(CheckConsolide.Checked);
end;

procedure TFTVAExcel.MontrerConsolide(Oui:boolean);
var agence:integer;
  conso, total:boolean;
begin
  conso:=oui;
  agence := StrToInt(copy(commun.SocieteChemin.Value,2,3));
  total := (DaDeclVao.tva_exceltypa.Value='Total');

  DaDeclVao.tva_excelttamatave.Visible := conso or (agence=210);
  DaDeclVao.tva_exceltdiego.Visible := conso or (agence=311);
  DaDeclVao.tva_exceltmontant.Visible := conso;

  TabTamatave.TabVisible := conso or (agence=210);
  TabDiego.TabVisible := conso or (agence=311);

  TabTiers210.TabVisible := conso or (agence=210);
  TabTiers311.TabVisible := conso or (agence=311);

  TabAnnexe210.TabVisible := conso or (agence=210);
  TabAnnexe311.TabVisible := conso or (agence=311);
  TabAnnexeConso.TabVisible := conso;

  DaDeclVao.tva_comptetaxe.Visible := not Total;
  DaDeclVao.tva_compterang.Visible := Total;
  DaDeclVao.tva_comptetamatave.Visible := Total and (conso or (agence=210));
  DaDeclVao.tva_comptediego.Visible := Total and (conso or (agence=311));
  DaDeclVao.tva_compteMontant.Visible := Total and Conso;
end;

procedure TFTVAExcel.PageControl2Change(Sender: TObject);
var i : integer;
begin
  CheckDetail.Visible:= false;
  RadioTypeAnnexe.Visible := false;
  if PageControl2.ActivePage = TabTVA then
  begin
  end
  else if PageControl2.ActivePage = TabTiers210 then
  begin
    DaDeclVao.q_ListeTiers.Close;
    DaDeclVao.q_ListeTiers.Parameters[0].Value := 's210';
    DaDeclVao.q_ListeTiers.Parameters[1].Value := LabelPeriode.Caption;
    DaDeclVao.q_ListeTiers.Open;
  end
  else if PageControl2.ActivePage = TabTiers311 then
  begin
    DaDeclVao.q_ListeTiers.Close;
    DaDeclVao.q_ListeTiers.Parameters[0].Value := 's311';
    DaDeclVao.q_ListeTiers.Parameters[1].Value := LabelPeriode.Caption;
    DaDeclVao.q_ListeTiers.Open;
  end
  else if PageControl2.ActivePage = TabAnnexe210 then
  begin
    DaDeclVao.q_AnnexeTVA.Close;
    DaDeclVao.q_AnnexeTVA.Parameters[0].Value := 's210';
    DaDeclVao.q_AnnexeTVA.Parameters[1].Value := False;
    DaDeclVao.q_AnnexeTVA.Parameters[2].Value := LabelPeriode.Caption;
    Memo1.Lines := DaDeclVao.q_AnnexeTVA.SQL;
    for i:= 0 to 2 do
      Memo1.Lines.Add(DaDeclVao.q_AnnexeTVA.Parameters[i].Value);
    DaDeclVao.q_AnnexeTVA.Open;
    CheckDetail.Visible:= True;
    RadioTypeAnnexe.Visible := CheckDetail.Checked and CheckDetail.Visible;
  end
  else if PageControl2.ActivePage = TabAnnexe311 then
  begin
    DaDeclVao.q_AnnexeTVA.Close;
    DaDeclVao.q_AnnexeTVA.Parameters[0].Value := 's311';
    DaDeclVao.q_AnnexeTVA.Parameters[1].Value := False;
    DaDeclVao.q_AnnexeTVA.Parameters[2].Value := LabelPeriode.Caption;
    Memo1.Lines := DaDeclVao.q_AnnexeTVA.SQL;
    for i:= 0 to 2 do
      Memo1.Lines.Add(DaDeclVao.q_AnnexeTVA.Parameters[i].Value);
    DaDeclVao.q_AnnexeTVA.Open;
    RadioTypeAnnexe.Visible := CheckDetail.Checked and CheckDetail.Visible;
    CheckDetail.Visible:= True;
  end
  else if PageControl2.ActivePage = TabAnnexeConso then
  begin
    DaDeclVao.q_AnnexeTVA.Close;
    DaDeclVao.q_AnnexeTVA.Parameters[0].Value := '';
    DaDeclVao.q_AnnexeTVA.Parameters[1].Value := True;
    DaDeclVao.q_AnnexeTVA.Parameters[2].Value := LabelPeriode.Caption;
    DaDeclVao.q_AnnexeTVA.Open;
  end;
end;

procedure TFTVAExcel.SpeedButton5Click(Sender: TObject);
begin
  DaConnect.SortieExcel(DaDeclVao.q_tva_detail_compte);
end;

procedure TFTVAExcel.s_tva_excelDataChange(Sender: TObject; Field: TField);
begin
  MontrerConsolide(CheckConsolide.Checked);
  GroupBox5.Visible:= (DaDeclVao.tva_excelniveau_calc.Value = 0);
end;

procedure TFTVAExcel.CheckDetailClick(Sender: TObject);
begin
  RadioTypeAnnexe.Visible := CheckDetail.Checked and CheckDetail.Visible;
end;

procedure TFTVAExcel.RadioTypeAnnexeClick(Sender: TObject);
begin
  DaDeclVao.q_AnnexeTVA.Close;
  case RadioTypeAnnexe.ItemIndex of
    0: DaDeclVao.q_AnnexeTVA.SQL[DaDeclVao.q_AnnexeTVA.SQL.Count-2]:='';
    1: DaDeclVao.q_AnnexeTVA.SQL[DaDeclVao.q_AnnexeTVA.SQL.Count-2]:='AND (LEFT(compte_lign,1)=''6''  or  a.num_ligne/100=3)';
    2: DaDeclVao.q_AnnexeTVA.SQL[DaDeclVao.q_AnnexeTVA.SQL.Count-2]:='AND NOT(LEFT(compte_lign,1)=''6''  or  a.num_ligne/100=3)';
  end;
  DaDeclVao.q_AnnexeTVA.Open;
end;

procedure TFTVAExcel.SpeedButton11Click(Sender: TObject);
var i:integer;
begin
  if SpeedButton11.Caption ='Voir SQL' then
  begin
    Memo1.Visible := True;
    SpeedButton11.Caption :='Cacher SQL';
    if PageControl2.ActivePage = TabTVA then
      AfficherSQLParam(Memo1.Lines,DaDeclVao.tva_excel);
    if PageControl2.ActivePage = TabTiers210 then
    begin
      Memo1.Lines := DaDeclVao.q_ListeTiers.SQL;
      for i:=0 to DaDeclVao.q_ListeTiers.Parameters.Count-1 do
        Memo1.Lines.Add(DaDeclVao.q_ListeTiers.Parameters[i].Value)
    end;
    //  AfficherSQLParam(Memo1.Lines,DaDeclVao.q_ListeTiers);
    if PageControl2.ActivePage = TabTiers311 then
      AfficherSQLParam(Memo1.Lines,DaDeclVao.q_ListeTiers);
    if PageControl2.ActivePage = TabTiers210 then
      AfficherSQLParam(Memo1.Lines,DaDeclVao.q_AnnexeTVA);
    if PageControl2.ActivePage = TabTiers311 then
      AfficherSQLParam(Memo1.Lines,DaDeclVao.q_AnnexeTVA);
  end
  else
  begin
    SpeedButton11.Caption :='Voir SQL';
    Memo1.Visible := False;
  end;
end;

procedure TFTVAExcel.AfficherSQLParam(lines:TStrings;q:TADOQuery);
var i:integer;
begin
  lines:=q.SQL;
  for i:=0 to q.Parameters.Count-1 do
    lines.Add(q.Parameters[i].Value)
end;

procedure TFTVAExcel.SpeedButton12Click(Sender: TObject);
begin
  Memo2.Visible := True;
  Memo2.Lines := DaDeclVao.q_tva_detail_compte.SQL;
end;

procedure TFTVAExcel.CheckEcritureClick(Sender: TObject);
begin
  DaDeclVao.q_tva_detail_compte.Close;
  if CheckEcriture.Checked then
  begin
    DaDeclVao.q_tva_detail_compte.SQL[10]:='AND journal || bdd in (';
    DaDeclVao.q_tva_detail_compte.SQL[11]:='SELECT journal || bdd';
    DaDeclVao.q_tva_detail_compte.SQL[18]:='GROUP BY journal, bdd';
  end
  else
  begin
    DaDeclVao.q_tva_detail_compte.SQL[10]:='AND compte in (';
    DaDeclVao.q_tva_detail_compte.SQL[11]:='SELECT compte';
    DaDeclVao.q_tva_detail_compte.SQL[18]:='GROUP BY compte';
  end;
  DaDeclVao.q_tva_detail_compte.Parameters[0].Value := LabelPeriode.Caption;
  DaDeclVao.q_tva_detail_compte.Parameters[1].Value := LabelPeriode.Caption+'Z';
  DaDeclVao.q_tva_detail_compte.Parameters[2].Value := DaDeclVao.tva_comptecompte_lign.Value;
  DaDeclVao.q_tva_detail_compte.Parameters[3].Value := DaDeclVao.tva_comptecompte_lign.Value;
  DaDeclVao.q_tva_detail_compte.Parameters[4].Value := DaDeclVao.tva_comptetaxe.Value;
  DaDeclVao.q_tva_detail_compte.Parameters[5].Value := DaDeclVao.tva_comptetaxe.Value;
  DaDeclVao.q_tva_detail_compte.Parameters[6].Value := DaDeclVao.tva_comptetaxe.Value;
  DaDeclVao.q_tva_detail_compte.Open;
end;

end.
