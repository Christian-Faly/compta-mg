unit BalConsolidee_U;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Grids, DBGrids, Db, Buttons, ComCtrls,
  StdCtrls;

type
  TFBalConsolidee = class(TForm)
    QuickRep1: TQuickRep;
    QRBand7: TQRBand;
    QRLabel51: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRBand9: TQRBand;
    QRExpr69: TQRExpr;
    QRBand10: TQRBand;
    QRLabel62: TQRLabel;
    QRExpr70: TQRExpr;
    QRBand12: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr44: TQRExpr;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRBand11: TQRBand;
    QRSysData3: TQRSysData;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRBand6: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape41: TQRShape;
    QRShape76: TQRShape;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr46: TQRExpr;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRDBText13: TQRDBText;
    QRShape42: TQRShape;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel58: TQRLabel;
    QRExpr62: TQRExpr;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel57: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel5: TQRLabel;
    QRShape73: TQRShape;
    QRShape78: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape74: TQRShape;
    QRShape82: TQRShape;
    QRLabel68: TQRLabel;
    QRShape53: TQRShape;
    QRLabel8: TQRLabel;
    QRShape89: TQRShape;
    QRLabel9: TQRLabel;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape28: TQRShape;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    UpDown1: TUpDown;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    UpDown2: TUpDown;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    DBGrid1: TDBGrid;
    QRShape85: TQRShape;
    QRDBText7: TQRDBText;
    QRExpr4: TQRExpr;
    QRShape1: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    SpeedButton1: TSpeedButton;
    Edit3: TEdit;
    Label6: TLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape52: TQRShape;
    QRLabel7: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRLabel12: TQRLabel;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    QRGroup3: TQRGroup;
    QRGroup4: TQRGroup;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    DataSource1: TDataSource;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr62Print(sender: TObject; var Value: String);
    procedure QRExpr44Print(sender: TObject; var Value: String);
    procedure QRExpr70Print(sender: TObject; var Value: String);
    procedure QRExpr46Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRGroup4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
    totdeb:array[0..7]of real;
    totcred:array[0..7]of real;
    procedure Asehoy;
  public
    { Déclarations publiques }
  end;

const
  COMPT=0;
  LONG3=1;
  LONG2=2;
  CLASSE=3;

var
  FBalConsolidee: TFBalConsolidee;

procedure AsehoyBalConsolidee;

implementation

uses Daspecia, DaCommun, USQL, TypeElmt, UdaConsolide;

{$R *.DFM}

procedure AsehoyBalConsolidee;
begin
  try
    FBalConsolidee := TFBalConsolidee.Create(Application);
    FBalConsolidee.Asehoy;
  finally
    FBalConsolidee.Free;
  end;
end;

procedure TFBalConsolidee.Asehoy;
var daty : TDate;
  d,m,y:word;
begin
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  Height := 300;//110;
  Width := 665;
  Decodedate(Commun.SocieteExerDeb.Value,y,m,d);
  ComboBox1.ItemIndex := m-1;
  UpDown1.Position := y;
  Decodedate(Commun.SocieteExerFin.Value,y,m,d);
  ComboBox2.ItemIndex := m-1;
  UpDown2.Position := y;
  left := 212;
  ShowModal;
end;

procedure TFBalConsolidee.QRExpr4Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel7.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFBalConsolidee.QRExpr2Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel2.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFBalConsolidee.QRExpr62Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel57.Caption:=DASQL.SelNumCptIntitule.Value;
end;


procedure TFBalConsolidee.QRExpr44Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel1.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFBalConsolidee.QRExpr70Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel61.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFBalConsolidee.QRExpr46Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel4.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFBalConsolidee.QRDBText7Print(sender: TObject; var Value: String);
begin
  DaConsolide.q_numcpt_conso.close;
  DaConsolide.q_numcpt_conso.Parameters[0].Value:=EnleveBlancDroite(Value);
  DaConsolide.q_numcpt_conso.open;
  QRLabel12.Caption:=DaConsolide.q_numcpt_consoIntitule.Value;
end;

procedure TFBalConsolidee.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand1.height := QRGroup4.height

  {  DASQL.SelectParam('CONSOLID','TIT 4 POS');
  if not DASQL.DansParam(DaConsolide.BalConsolide.Fields[0].Value) then
  begin
    QRBand1.Height:=0;
    QRBand1.Frame.DrawTop:=false;
    QRBand1.Frame.DrawBottom:=false;
  end
  else
  begin
    QRBand1.Height:=20;
    QRBand1.Frame.DrawTop:=true;
    QRBand1.Frame.DrawBottom:=true;
  end;
  TotDeb[5]:=0;
  TotCred[5]:=0;
}end;

procedure TFBalConsolidee.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  if copy(DaConsolide.BalConsolide.Fields[0].Value,1,1)<>'6' then
    QRGroup2.Height:=0
  else
  begin
    QRGroup2.Height:=27;
    {QRExpr72.Reset;
    QRExpr64.Reset; }
 // end;
end;

procedure TFBalConsolidee.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand3.height := QRGroup1.height;
  {DASQL.SelectParam('CONSOLID','PAS 3 POS');
  if not DASQL.DansParam(DaConsolide.BalConsolide.Fields[0].Value) then
  begin
    QRBand3.Height:=20;
    QRBand3.Frame.DrawTop:=true;
    QRBand3.Frame.DrawBottom:=true;
  end
  else
  begin
    QRBand3.Height:=0;
    QRBand3.Frame.DrawTop:=false;
    QRBand3.Frame.DrawBottom:=false;
  end;
  TotDeb[1]:=0;
  TotCred[1]:=0; }
end;

procedure TFBalConsolidee.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var i:integer;
begin
{  for i:=1 to 7 do
  begin
    totdeb[i]:=0;
    totcred[i]:=0;
  end;
}
  //QRBand8.Height :=18;
  QRBand1.Height :=20;
  QRBand3.Height :=20;
  QRBand10.Height:=20;
  QRBand9.Height :=27;
  QRBand12.Height:=46;

  for i:=1 to 300 do QRLabel1.Caption:=QRLabel1.Caption+' ';
end;

procedure TFBalConsolidee.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i:integer;
begin
{  for i:=1 to 7 do
  begin
    totdeb[i]:=totdeb[i]+DaConsolide.BalConsolideStTotDeb.Value;
    totcred[i]:=totcred[i]+DaConsolide.BalConsolideStTotCred.Value;
  end;
}end;

procedure TFBalConsolidee.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand10.Height := QRGroup3.height;
  //TotDeb[2]:=0;
  //TotCred[2]:=0;
end;

procedure TFBalConsolidee.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  TotDeb[3]:=0;
  TotCred[3]:=0;
end;

procedure TFBalConsolidee.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  DaSQL.QTotConsilid_1.Close;
  DaSQL.QTotConsilid_1.Parameters[0].Value := DaConsolide.BalConsolide.Fields[0].Value;
  DaSQL.QTotConsilid_1.Open;

  if (TotDeb[7]=0)and(TotCred[7]=0)and
     (DaSQL.QTotConsilid_1TotDebit.Value=0)and
     (DaSQL.QTotConsilid_1TotCredit.Value=0)then
    QRBand8.Height := 0
  else
    QRBand8.Height :=18;
  TotDeb[7]:=0;
  TotCred[7]:=0;
}end;

procedure TFBalConsolidee.SpeedButton5Click(Sender: TObject);
var periode_de, periode_a: string;
begin
  periode_de := Edit1.Text +'/'+ FormatFloat('00',ComboBox1.ItemIndex+1);
  periode_a := Edit2.Text +'/'+ FormatFloat('00',ComboBox2.ItemIndex+1);
  //showMessage(periode_de+' '+periode_a);
  DaConsolide.q_Classe.Close;
  DaConsolide.q_Classe.Parameters[0].Value := periode_de;
  DaConsolide.q_Classe.Parameters[1].Value := periode_a;
  DaConsolide.q_Classe.Parameters[2].Value := '1';
  DaConsolide.q_Classe.Parameters[3].Value := '5';
  DaConsolide.q_Classe.Open;

  DaConsolide.q_balance_conso_periode.Close;
  DaConsolide.q_balance_conso_periode.Parameters[0].Value := periode_de;
  DaConsolide.q_balance_conso_periode.Parameters[1].Value := periode_a;
  DaConsolide.q_balance_conso_periode.Open;
  QuickRep1.Preview;
end;

procedure TFBalConsolidee.SpeedButton1Click(Sender: TObject);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Edit3.Text;
  DASQL.SelNumCpt.open;
  Label6.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFBalConsolidee.QRGroup4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Copy(DaConsolide.q_balance_conso_periodecompte_auxi.Value,1,1)>='6' then
    QRGroup4.height := 20
  else
    QRGroup4.height := 0;
end;

procedure TFBalConsolidee.QRGroup3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Copy(DaConsolide.q_balance_conso_periodecompte_auxi.Value,1,1)>='2' then
    QRGroup3.height := 20
  else
    QRGroup3.height := 0;
  //QRBand10
end;

procedure TFBalConsolidee.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Copy(DaConsolide.q_balance_conso_periodecompte_auxi.Value,1,1)>='5' then
    QRGroup1.height := 20
  else
    QRGroup1.height := 0;
  //QRBand3
end;

procedure TFBalConsolidee.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DaConsolide.q_Classe.Close;
  DaConsolide.q_Classe.Parameters[2].Value := '6';
  DaConsolide.q_Classe.Parameters[3].Value := '7';
  DaConsolide.q_Classe.Open;
end;

end.                                                                                                                   h
