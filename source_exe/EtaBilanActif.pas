unit EtaBilanActif;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, StdCtrls,db, Grids, DBGrids, Buttons,
  DBTables;

type
  TFEtaBilanActif = class(TForm)
    QuickRep3: TQuickRep;
    QRBand22: TQRBand;
    QRDBText61 : TQRDBText;
    QRDBText62 : TQRDBText;
    QRDBText57 : TQRDBText;
    QRBand17: TQRBand;
    QRBand21: TQRBand;
    QRBand25: TQRBand;
    QRGroup11: TQRGroup;
    QRGroup12: TQRGroup;
    QRGroup13: TQRGroup;
    QRGroup14: TQRGroup;
    QRDBText69: TQRDBText;
    QRBand26: TQRBand;
    QRDBText68: TQRDBText;
    QRBand27: TQRBand;
    QRBand29: TQRBand;
    QRShape19: TQRShape;
    QRShape87: TQRShape;
    QRShape35: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel29: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape48: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel49: TQRLabel;
    QRShape11: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape41: TQRShape;
    QRShape110: TQRShape;
    QRShape98: TQRShape;
    QRShape78: TQRShape;
    QRShape128: TQRShape;
    QRShape42: TQRShape;
    QRShape111: TQRShape;
    QRShape99: TQRShape;
    QRShape81: TQRShape;
    QRShape129: TQRShape;
    QRShape43: TQRShape;
    QRShape112: TQRShape;
    QRShape102: TQRShape;
    QRShape82: TQRShape;
    QRShape130: TQRShape;
    QRShape34: TQRShape;
    QRShape40: TQRShape;
    QRShape109: TQRShape;
    QRShape95: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape26: TQRShape;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure QRBand21BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr54Print(sender: TObject; var Value: String);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRExpr47Print(sender: TObject; var Value: String);
    procedure QRExpr37Print(sender: TObject; var Value: String);
    procedure QRExpr27Print(sender: TObject; var Value: String);
    procedure QRExpr17Print(sender: TObject; var Value: String);
    procedure QRExpr16Print(sender: TObject; var Value: String);
    procedure QRExpr24Print(sender: TObject; var Value: String);
    procedure QRExpr63Print(sender: TObject; var Value: String);
    procedure QRExpr13Print(sender: TObject; var Value: String);
    procedure QRExpr53Print(sender: TObject; var Value: String);
    procedure QRExpr43Print(sender: TObject; var Value: String);
    procedure QRExpr33Print(sender: TObject; var Value: String);
    procedure QRExpr23Print(sender: TObject; var Value: String);
    procedure QRExpr58Print(sender: TObject; var Value: String);
    procedure QRExpr65Print(sender: TObject; var Value: String);
    procedure QRExpr64Print(sender: TObject; var Value: String);
    procedure QRExpr15Print(sender: TObject; var Value: String);
    procedure QRExpr25Print(sender: TObject; var Value: String);
    procedure QRExpr34Print(sender: TObject; var Value: String);
    procedure QRExpr35Print(sender: TObject; var Value: String);
    procedure QRExpr44Print(sender: TObject; var Value: String);
    procedure QRExpr45Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr55Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRExpr48Print(sender: TObject; var Value: String);
    procedure QRExpr38Print(sender: TObject; var Value: String);
    procedure QRExpr28Print(sender: TObject; var Value: String);
    procedure QRExpr18Print(sender: TObject; var Value: String);
    procedure QRExpr26Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRExpr59Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRExpr49Print(sender: TObject; var Value: String);
    procedure QRExpr39Print(sender: TObject; var Value: String);
    procedure QRExpr29Print(sender: TObject; var Value: String);
    procedure QRExpr19Print(sender: TObject; var Value: String);
    procedure QRExpr36Print(sender: TObject; var Value: String);
    procedure QRExpr10Print(sender: TObject; var Value: String);
    procedure QRExpr60Print(sender: TObject; var Value: String);
    procedure QRExpr8Print(sender: TObject; var Value: String);
    procedure QRExpr50Print(sender: TObject; var Value: String);
    procedure QRExpr40Print(sender: TObject; var Value: String);
    procedure QRExpr30Print(sender: TObject; var Value: String);
    procedure QRExpr20Print(sender: TObject; var Value: String);
    procedure QRExpr46Print(sender: TObject; var Value: String);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRExpr61Print(sender: TObject; var Value: String);
    procedure QRExpr9Print(sender: TObject; var Value: String);
    procedure QRExpr51Print(sender: TObject; var Value: String);
    procedure QRExpr41Print(sender: TObject; var Value: String);
    procedure QRExpr31Print(sender: TObject; var Value: String);
    procedure QRExpr21Print(sender: TObject; var Value: String);
    procedure QRExpr56Print(sender: TObject; var Value: String);
    procedure QRExpr14Print(sender: TObject; var Value: String);
    procedure QRExpr62Print(sender: TObject; var Value: String);
    procedure QRExpr11Print(sender: TObject; var Value: String);
    procedure QRExpr52Print(sender: TObject; var Value: String);
    procedure QRExpr42Print(sender: TObject; var Value: String);
    procedure QRExpr32Print(sender: TObject; var Value: String);
    procedure QRExpr22Print(sender: TObject; var Value: String);
    procedure QRExpr57Print(sender: TObject; var Value: String);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand26BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand25BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand29BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRBand27AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand26AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand25AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand29AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
  private
    { Déclarations privées }
    Total,Mt1,Mt2,Mt3,Mt4,Mt5,Mt6,Mt7,Mt8,Mt9:real;
    TotGene,Tot,Tot1,Tot2,Tot3:real;
    TotGene_1,Tot_1,Tot1_1,Tot2_1:real;
    BrutGene,Brut,Brut1,Brut2,Brut3,Brut4:double;
    vide,ndfOrig,ndfPrec,ndfDest,CmptRes :string;
    Pas_de_N_1,first:boolean;
    TypSoc,N_Soc,hautLigne,page:integer;
    procedure RequeteEF;
  public
    { Déclarations publiques }
    procedure Imprimer(TypS,NumSociete,pg:integer;expr_,Expr,
        ndfOrigine,ndfPrecedent,ndfDestination,CmptResult:string);
    procedure asehoy;
  end;

var
  FEtaBilanActif: TFEtaBilanActif;

procedure ImprimerBilanActif(TypS,NumSociete,pg:integer;expr_,Expr,
                  ndfOrigine,ndfPrecedent,ndfDestination,CmptResult:string);

implementation

uses DaCommun, Daspecia,  EtaEFAut, TypeElmt, USQL;


{$R *.DFM}


procedure ImprimerBilanActif(TypS,NumSociete,pg:integer;expr_,Expr,
              ndfOrigine,ndfPrecedent,ndfDestination,CmptResult:string);
begin
  try
    FEtaBilanActif:=TFEtaBilanActif.create(Application);
    FEtaBilanActif.Imprimer(TypS,NumSociete,pg,expr_,Expr,ndfOrigine,ndfPrecedent,ndfDestination,CmptResult);
  finally
    FEtaBilanActif.Free;
  end;
end;

procedure TFEtaBilanActif.Asehoy;
begin
  RequeteEF;
  showModal;
end;

procedure TFEtaBilanActif.Imprimer(TypS,NumSociete,pg:integer;expr_,Expr,
               ndfOrigine,ndfPrecedent,ndfDestination,CmptResult:string);
begin
  TypSoc:=TypS;
  page:=pg;
  N_Soc:=NumSociete;
  QRExpr1.Expression  :=Expr_;
  QRExpr3.Expression  :=Expr;
  ndfOrig:=ndfOrigine;
  ndfPrec:=ndfPrecedent;
  ndfDest:=ndfDestination;
  CmptRes:=CmptResult;
  HautLigne:=16;
  QuickRep3.preview;
end;

procedure TFEtaBilanActif.RequeteEF;
begin
  DASQL.ParamEF.Close;
  DASQL.ParamEF.SQL.Clear;
  DASQL.ParamEF.SQL.Add('Select * from  Titre a, SousTitr b, ');
  DASQL.ParamEF.SQL.Add('SouSouTi c, UnionCp d, GroupCpt e,');
  DASQL.ParamEF.SQL.Add('consolidee f');
  DASQL.ParamEF.SQL.Add(' where e.EF and');
  DASQL.ParamEF.SQL.Add(' (a.Typa=:z)and');
  DASQL.ParamEF.SQL.Add('(a.Numero=b.Titre)and(b.Numero=c.SouTitre) and');
  DASQL.ParamEF.SQL.Add('(c.Numero=d.SSTitre) and (d.Numero=e.UnionCp)and');
  DASQL.ParamEF.SQL.Add('(f.compteD>=e.DebutCpt)and(f.compteD<=e.FinCompte+''Z'')and');
  DASQL.ParamEF.SQL.Add('(((f.Debit1-f.Credit1)<>0)or((f.Debit2-f.Credit2)<>0)');
  DASQL.ParamEF.SQL.Add('or((f.Debit3-f.Credit3)<>0)or((f.Debit4-f.Credit4)<>0)');
  DASQL.ParamEF.SQL.Add('or((f.Debit5-f.Credit5)<>0)or((f.Debit6-f.Credit6)<>0))');
  //DASQL.ParamEF.SQL.Add('or((f.Debit7-f.Credit7)<>0))');
  DASQL.ParamEF.SQL.Add('order by a.typa, a.rang, a.numero, b.rang, b.Numero, c.rang,');
  DASQL.ParamEF.SQL.Add('c.Numero, d.rang, d.Numero, e.rang, e.IntitGroup, e.DebutCpt');
  DASQL.ParamEF.Parameters[0].Value:=0;//Oui;
  DASQL.ParamEF.open;
end;

procedure TFEtaBilanActif.QRBand21BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  case N_Soc of
    0:Total:=Total+DASQL.ParamEFMontant1.Value+ DASQL.ParamEFMontant1.Value+
                   DASQL.ParamEFMontant2.Value+ DASQL.ParamEFMontant3.Value+
                   DASQL.ParamEFMontant4.Value+ DASQL.ParamEFMontant5.Value+
                   DASQL.ParamEFMontant6.Value+ DASQL.ParamEFMontant7.Value;
    1:Total:=Total+DASQL.ParamEFMontant1.Value;
    2:Total:=Total+DASQL.ParamEFMontant2.Value;
    3:Total:=Total+DASQL.ParamEFMontant3.Value;
    4:Total:=Total+DASQL.ParamEFMontant4.Value;
    5:Total:=Total+DASQL.ParamEFMontant5.Value;
    6:Total:=Total+DASQL.ParamEFMontant6.Value;
    7:Total:=Total+DASQL.ParamEFMontant7.Value;
  end;
end;

procedure TFEtaBilanActif.QRGroup14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var st:string;
begin
  DASQL.SelUnionCp.close;
  DASQL.SelUnionCp.parameters[0].Value:=DASQL.ParamEFNumero_3.Value;
  DASQL.SelUnionCp.Open;
  st:=DASQL.SelUnionCpIntitule.value;
  QRLabel39.Caption := st;
  QRLabel40.Caption := st;
  if DASQL.ParamEFEF_3.Value =0 then
  begin
    QRBand27.Height :=1;
  end
  else
  begin
    QRBand27.Height :=HautLigne;
  end;
end;

procedure TFEtaBilanActif.QRExpr1Print(sender: TObject; var Value: String);
begin
  if DASQL.ParamEFDeciderGroupe.value =0 then
    AvadihoReal(Value,Brut4);
  Value:='';
end;

procedure TFEtaBilanActif.QRExpr54Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr5Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr47Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr37Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr27Print(sender: TObject; var Value: String);
begin
//  AvadihoReal(Value,Brut2);
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr17Print(sender: TObject; var Value: String);
begin
//  AvadihoReal(Value,Brut1);
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr16Print(sender: TObject; var Value: String);
begin
//  avadihoReal(Value,Brut);
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr24Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr63Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr13Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr53Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr43Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr33Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr23Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr58Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr65Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr64Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr15Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr25Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr34Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr35Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr44Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr45Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr2Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
  avadihoReal(Value,BrutGene);
end;

procedure TFEtaBilanActif.QRExpr55Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr6Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr48Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr38Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr28Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr18Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr26Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr4Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr59Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr7Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr49Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr39Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr29Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr19Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr36Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr10Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr60Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr8Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr50Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr40Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr30Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr20Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr46Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr12Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr61Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr9Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr51Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr41Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr31Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr21Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr56Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr14Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr62Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr11Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr52Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr42Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr32Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr22Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRExpr57Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaBilanActif.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRBand17.Frame.DrawTop :=false;
  DASQL.SelConsolid.Close;
  DASQL.SelConsolid.Parameters[0].Value:=CmptRes;
  DASQL.SelConsolid.Open;
  DASQL.SelConsolid.Edit;
  DASQL.SelConsolidCompte.Value:= CmptRes;
  DASQL.SelConsolidDebit1.Value:=BrutGene+TotGene;
  DASQL.SelConsolid.Post;
  TotGene:=0;
  TotGene_1:=0;
end;

procedure TFEtaBilanActif.QRGroup12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DASQL.ParamEFEF_1.Value=0) then
  begin
    QRGroup12.Height :=0;
    QRBand25.Height :=0;
  end
  else
  begin
    QRGroup12.Height :=HautLigne;
    QRBand25.Height :=25;
  end;

  QRLabel10.Caption :='';
  if (DASQL.ParamEFEF_2.Value=0) and (DASQL.ParamEFEF_3.Value=0) then
  begin
    QRGroup12.Height :=0;
  end
  else
  begin
    QRGroup12.Height :=HautLigne;
    QRLabel10.Caption :=vide;
  end;
end;

procedure TFEtaBilanActif.QRGroup13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DASQL.ParamEFEF_2.Value=0) then
  begin
    QRGroup13.Height :=0;
    QRBand26.Height :=0;
  end
  else
  begin
    QRGroup13.Height :=HautLigne;
    QRBand26.Height :=HautLigne;
  end;
  if (DASQL.ParamEFEF_3.Value=0) then
  begin
    QRGroup13.Height :=0;
  end
end;

procedure TFEtaBilanActif.QRBand27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if QRBand27.Height = 1 then QRLabel51.Caption:=vide
   else QRLabel51.Caption:='';
   QRLabel24.Caption:=FormatFloat('###,0',Brut3);
//  if not DASQL.ParamEFEF_3.value then QRBand27.Height :=0;
  case N_Soc of
    0:Tot3:=Tot3+Mt1+Mt2+Mt3+Mt4+Mt5+Mt6+Mt7+Mt8+Mt9;
    1:Tot3:=Tot3+Mt1;
    2:Tot3:=Tot3+Mt2;
    3:Tot3:=Tot3+Mt3;
    4:Tot3:=Tot3+Mt4;
    5:Tot3:=Tot3+Mt5;
    6:Tot3:=Tot3+Mt6;
    7:Tot3:=Tot3+Mt7;
  end;
  Mt1:=0;Mt2:=0;Mt3:=0;Mt4:=0;Mt5:=0;Mt6:=0;Mt7:=0;Mt8:=0;Mt9:=0;
  QRLabel1.Caption := FormatFloat('###,0',-Tot3);
  Tot2:=Tot2+Tot3;
  if not Pas_de_N_1 then
  begin
    DASQL.BilanAct_1.Close;
    DASQL.BilanAct_1.Parameters[0].Value:=DASQL.ParamEFNumero_3.Value;
    DASQL.BilanAct_1.Open;
    QRLabel18.Caption:=FormatFloat('###,0',DASQL.BilanAct_1Brut.value
        +DASQL.BilanAct_1AmPro.Value);
    Tot2_1:=Tot2_1+DASQL.BilanAct_1Brut.value + DASQL.BilanAct_1AmPro.Value;
  end
  else
    Tot2_1:=Tot2_1+0;
end;

procedure TFEtaBilanActif.QRBand26BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QRBand26.Height = 1 then QRLabel52.Caption:=vide
  else QRLabel52.Caption:='';
  QRLabel25.Caption:=FormatFloat('###,0',Brut2);
  if DASQL.ParamEFEF_2.value=0 then QRBand26.Height :=0;
  QRLabel3.Caption := FormatFloat('###,0',-Tot2);
  QRLabel19.Caption := FormatFloat('###,0',Tot2_1);
  Tot1:=Tot1+Tot2;
  Tot1_1:=Tot1_1+Tot2_1;
end;

procedure TFEtaBilanActif.QRGroup11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DASQL.ParamEFEF_1.Value=0) and(DASQL.ParamEFEF_2.Value=0) and (DASQL.ParamEFEF_3.Value=0) then
  begin
    QRGroup11.Height :=0;
    QRLabel17.caption:= DASQL.ParamEFIntitule.Value;
  end
  else
  begin
    QRGroup11.Height :=HautLigne;
    if DASQL.ParamEFIntitule.Value<>'' then
      QRLabel17.caption:='Total ' + DASQL.ParamEFIntitule.Value;
    if DASQL.ParamEFIntitule.Value='Bla Bla' then
      QRLabel17.caption:='';
  end;
end;

procedure TFEtaBilanActif.QRBand25BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel34.Caption:=FormatFloat('###,0',Brut1);
  QRLabel4.Caption := FormatFloat('###,0',-Tot1);
  QRLabel20.Caption := FormatFloat('###,0',Tot1_1);
  Tot:=Tot+Tot1;
  Tot_1:=Tot_1+Tot1_1;
end;

procedure TFEtaBilanActif.QRBand29BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel35.Caption:=FormatFloat('###,0',Brut);
  QRLabel5.Caption := FormatFloat('###,0',-Tot);
  QRLabel21.Caption := FormatFloat('###,0',Tot_1);
  TotGene:=TotGene+Tot;
  TOtGene_1:=TotGene_1+Tot_1;
end;

procedure TFEtaBilanActif.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,0',Brut3+Tot3);
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,0',Brut2+Tot2);
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,0',Brut1+Tot1);
  Value:=Parenthese(Value,true);
end;


procedure TFEtaBilanActif.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,0',Brut+Tot);
  Value:=Parenthese(Value,true);
end;



procedure TFEtaBilanActif.QRBand27AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Brut2:=Brut2+Brut3;
  Special.BilanAct.Insert;
  Special.BilanActNumero_3.value:=DASQL.ParamEFNumero_3.Value ;
  Special.BilanActNumero_2.value:=DASQL.ParamEFNumero_2.Value ;
  Special.BilanActNumero_1.value:=DASQL.ParamEFNumero_1.Value ;
  Special.BilanActNumero.value:=DASQL.ParamEFNumero.Value ;
  Special.BilanActLibelle.value:=DASQL.SelUnionCpIntitule.value;//QRLabel40.Caption;
  Special.BilanActBrut.Value := Brut3;
  Special.BilanActAmPro.Value := Tot3;
  Special.BilanAct.Post;
  Brut3:=0;
  Tot3:=0;
end;

procedure TFEtaBilanActif.QRBand26AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Brut1:=Brut1+Brut2;Brut2:=0;
  Tot2:=0;
  Tot2_1:=0;
end;

procedure TFEtaBilanActif.QRBand25AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Brut:=Brut+Brut1;Brut1:=0;
  Tot1:=0;
  Tot1_1:=0;
end;








procedure TFEtaBilanActif.QRBand29AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  BrutGene:=BrutGene+Brut;Brut:=0;
  Tot:=0;
  Tot_1:=0;
end;









procedure TFEtaBilanActif.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel36.Caption:=FormatFloat('###,0',BrutGene);
  QRLabel26.Caption := FormatFloat('###,0',-TotGene);
  QRLabel28.Caption := FormatFloat('###,0',TotGene_1);
end;

procedure TFEtaBilanActif.QRLabel27Print(sender: TObject;
  var Value: String);
begin
  Value := FormatFloat('###,0',BrutGene+TotGene);
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {Calcul ammortissement}
  if DASQL.ParamEFAmDebut.Value>'0' then
  begin
    DASQL.Am_Prov.Close;
    DASQL.Am_Prov.Parameters[0].Value:=DASQL.ParamEFAmDebut.Value;
    DASQL.Am_Prov.Parameters[1].Value:=DASQL.ParamEFAmFin.Value+'Z';
    DASQL.Am_Prov.Open;

    While not DASQL.Am_Prov.EOF do
    begin
      case N_Soc of
        0:
          begin
            Mt1:=Mt1 + DASQL.Am_ProvDebit1.Value - DASQL.Am_ProvCredit1.Value;
            Mt2:=Mt2 + DASQL.Am_ProvDebit2.Value - DASQL.Am_ProvCredit2.Value;
            Mt3:=Mt3 + DASQL.Am_ProvDebit3.Value - DASQL.Am_ProvCredit3.Value;
            Mt4:=Mt4 + DASQL.Am_ProvDebit4.Value - DASQL.Am_ProvCredit4.Value;
            Mt5:=Mt5 + DASQL.Am_ProvDebit5.Value - DASQL.Am_ProvCredit5.Value;
            Mt6:=Mt6 + DASQL.Am_ProvDebit6.Value - DASQL.Am_ProvCredit6.Value;
            Mt7:=0;//Mt7 + DASQL.Am_ProvDebit7.Value - DASQL.Am_ProvCredit7.Value;
            Mt8:=0;//Mt8 + DASQL.Am_ProvDebit8.Value - DASQL.Am_ProvCredit8.Value;
            Mt9:=0;//Mt9 + DASQL.Am_ProvDebit9.Value - DASQL.Am_ProvCredit9.Value;
          end;
        1:Mt1:=Mt1 + DASQL.Am_ProvDebit1.Value - DASQL.Am_ProvCredit1.Value;
        2:Mt2:=Mt2 + DASQL.Am_ProvDebit2.Value - DASQL.Am_ProvCredit2.Value;
        3:Mt3:=Mt3 + DASQL.Am_ProvDebit3.Value - DASQL.Am_ProvCredit3.Value;
        4:Mt4:=Mt4 + DASQL.Am_ProvDebit4.Value - DASQL.Am_ProvCredit4.Value;
        5:Mt5:=Mt5 + DASQL.Am_ProvDebit5.Value - DASQL.Am_ProvCredit5.Value;
        6:Mt6:=Mt6 + DASQL.Am_ProvDebit6.Value - DASQL.Am_ProvCredit6.Value;
        7:Mt7:=0;//Mt7 + DASQL.Am_ProvDebit7.Value - DASQL.Am_ProvCredit7.Value;
        8:Mt8:=0;//Mt8 + DASQL.Am_ProvDebit8.Value - DASQL.Am_ProvCredit8.Value;
        9:Mt9:=0;//Mt9 + DASQL.Am_ProvDebit9.Value - DASQL.Am_ProvCredit9.Value;
      end;
      DASQL.Am_Prov.Next;
    end;
  end;
  {Calcul provision}
  if DASQL.ParamEFProDebut.Value>'0' then
  begin
    DASQL.Am_Prov.Close;
    DASQL.Am_Prov.Parameters[0].Value:=DASQL.ParamEFProDebut.Value;
    DASQL.Am_Prov.Parameters[1].Value:=DASQL.ParamEFProFin.Value+'Z';
    DASQL.Am_Prov.Open;
    While not DASQL.Am_Prov.EOF do
    begin
      case N_Soc of
        0:
          begin
            Mt1:=Mt1 + DASQL.Am_ProvDebit1.Value - DASQL.Am_ProvCredit1.Value;
            Mt2:=Mt2 + DASQL.Am_ProvDebit2.Value - DASQL.Am_ProvCredit2.Value;
            Mt3:=Mt3 + DASQL.Am_ProvDebit3.Value - DASQL.Am_ProvCredit3.Value;
            Mt4:=Mt4 + DASQL.Am_ProvDebit4.Value - DASQL.Am_ProvCredit4.Value;
            Mt5:=Mt5 + DASQL.Am_ProvDebit5.Value - DASQL.Am_ProvCredit5.Value;
            Mt6:=Mt6 + DASQL.Am_ProvDebit6.Value - DASQL.Am_ProvCredit6.Value;
            Mt7:=0;//Mt7 + DASQL.Am_ProvDebit7.Value - DASQL.Am_ProvCredit7.Value;
            Mt8:=0;//Mt8 + DASQL.Am_ProvDebit8.Value - DASQL.Am_ProvCredit8.Value;
            Mt9:=0;//Mt9 + DASQL.Am_ProvDebit9.Value - DASQL.Am_ProvCredit9.Value;
          end;
        1:Mt1:=Mt1 + DASQL.Am_ProvDebit1.Value - DASQL.Am_ProvCredit1.Value;
        2:Mt2:=Mt2 + DASQL.Am_ProvDebit2.Value - DASQL.Am_ProvCredit2.Value;
        3:Mt3:=Mt3 + DASQL.Am_ProvDebit3.Value - DASQL.Am_ProvCredit3.Value;
        4:Mt4:=Mt4 + DASQL.Am_ProvDebit4.Value - DASQL.Am_ProvCredit4.Value;
        5:Mt5:=Mt5 + DASQL.Am_ProvDebit5.Value - DASQL.Am_ProvCredit5.Value;
        6:Mt6:=Mt6 + DASQL.Am_ProvDebit6.Value - DASQL.Am_ProvCredit6.Value;
        7:Mt7:=0;//Mt7 + DASQL.Am_ProvDebit7.Value - DASQL.Am_ProvCredit7.Value;
        8:Mt8:=0;//Mt8 + DASQL.Am_ProvDebit8.Value - DASQL.Am_ProvCredit8.Value;
        9:Mt9:=0;//Mt9 + DASQL.Am_ProvDebit9.Value - DASQL.Am_ProvCredit9.Value;
      end;
      DASQL.Am_Prov.Next;
    end;
  end;
end;

procedure TFEtaBilanActif.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  first:=true;
  QRLabel32.Caption:='- '+FormatFloat('#',page)+' -';
  Special.BilanAct.close;
  //Special.BilanAct.DataBaseName:=ExtractFilePath(ndfDest);
  //Special.BilanAct.TableName :=ExtractFileName(ndfdest);
  Special.BilanAct.Open;Special.BilanAct.first;
  while not Special.BilanAct.EOF do  Special.BilanAct.delete;

  Tot2_1:=0;
  Tot1_1:=0;
  Tot_1:=0;
  TotGene:=0;
  TotGene_1:=0;
  Mt1:=0;Mt2:=0;Mt3:=0;Mt4:=0;Mt5:=0;Mt6:=0;Mt7:=0;Mt8:=0;Mt9:=0;;
  BrutGene:=0;Brut:=0;Brut1:=0;Brut2:=0;Brut3:=0;
  DASQL.SelConsolid.Close;
  DASQL.SelConsolid.SQL.Clear;
  DASQL.SelConsolid.SQL.Add('Select * from ');
  DASQL.SelConsolid.SQL.Add(' consolidee ');
  DASQL.SelConsolid.SQL.Add('where compteD=:a');
  DASQL.Am_Prov.close;
  DASQL.Am_Prov.SQL.Clear;
  DASQL.Am_Prov.SQL.Add('Select * from  ');
  DASQL.Am_Prov.SQL.Add(' consolidee ');
  DASQL.Am_Prov.SQL.Add('where (CompteD>=:x) and (CompteD<=:y)');

  vide:='                                                       '+
        '                                                       '+
        '                                                       '+
        '                                                       '+
        '                                                       ';
  QRLabel2.Caption := 'Période du '+ FormatDateTime('dd/MM/yyyy',commun.SocieteExerDeb.Value)
                    + ' au '+ FormatDateTime('dd/MM/yyyy',commun.SocieteExerFin.Value);
  Total:=0;

  QRBand21.Height:=0; //***
  QRLabel41.Caption :=vide;
  QRgroup1.Height :=0;
  QRBand2.Height :=1; //*******
  QRLabel50.Caption :=vide;



  RequeteEF;

  QRGroup14.Height :=0;
  try
    DASQL.BilanAct_1.Close;
    DASQL.BilanAct_1.SQL.clear;
    DASQL.BilanAct_1.SQL.Add('select * from bilanAct_1');//'''+ndfPrec+''' ');
    DASQL.BilanAct_1.SQL.Add('where numero_3=:a');
    DASQL.BilanAct_1.Parameters[0].Value:=0;
    DASQL.BilanAct_1.Open;
  except
    On EDataBaseError do
      //DASQL.BilanAct_1.DatabaseName:='c:\CSC\Log\Exec\Compta\Data';
  end;
end;

procedure TFEtaBilanActif.QRBand22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var ste,CodeExerN, CodeExerN_1:string;
begin
  ste:='';
  Case typSoc of
  0:begin
      Commun.Consolide.First;
      while not Commun.Consolide.EOF do
      begin
        Ste:=Ste+' - '+Commun.ConsolideRS.Value;
        Commun.Consolide.Next;
      end;
      QRLabel30.Caption:=Ste;
      QRLabel33.Caption:= 'BILAN CONSOLIDE AU '+FormatDateTime('dd/mm/yyyy', Commun.SocieteExerFin.Value);
    end;
  1:begin
      QRLabel30.Caption:=Commun.ConsolideRS.Value;
      QRLabel33.Caption:= 'BILAN AU '+FormatDateTime('dd/mm/yyyy', Commun.SocieteExerFin.Value);
    end;
  end;
  Commun.CodeExercice(Commun.SocieteCode.Value,CodeExerN,CodeExerN_1 );
  QRLabel22.Caption:= CodeExerN;
  QRLabel23.Caption:= CodeExerN_1 ;
end;

procedure TFEtaBilanActif.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel1Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel3Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRLabel26Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Brut3:=Brut3+Brut4;
end;

procedure TFEtaBilanActif.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaBilanActif.QRExpr3Print(sender: TObject; var Value: String);
begin
  if DASQL.ParamEFDeciderGroupe.value<>0 then
    AvadihoReal(Value,Brut4)
  else
    Value:=FormatFloat('#,##0',Brut4);
end;

end.
