unit EtaAnnex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   quickrpt, ExtCtrls, Qrctrls;

type
  TFEtaAnnex = class(TForm)
    QuickRep3: TQuickRep;
    QRBand22: TQRBand;
    QRGroup15: TQRGroup;
    QRGroup16: TQRGroup;
    QRGroup11: TQRGroup;
    QRGroup12: TQRGroup;
    QRGroup13: TQRGroup;
    QRGroup14: TQRGroup;
    QRGroup17: TQRGroup;
    QRDBText61: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText57: TQRDBText;
    QRBand20: TQRBand;
    QRBand21: TQRBand;
    QRBand25: TQRBand;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRShape64: TQRShape;
    QRShape78: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRDBText69: TQRDBText;
    QRBand26: TQRBand;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRShape95: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRDBText68: TQRDBText;
    QRBand27: TQRBand;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRBand29: TQRBand;
    QRExpr16: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRExpr58: TQRExpr;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRDBText70: TQRDBText;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRExpr64: TQRExpr;
    QRLabel1: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape19: TQRShape;
    QRShape26: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape36: TQRShape;
    QRShape43: TQRShape;
    QRShape52: TQRShape;
    QRShape59: TQRShape;
    QRShape65: TQRShape;
    QRShape70: TQRShape;
    QRShape83: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape91: TQRShape;
    QRShape35: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr24: TQRExpr;
    QRShape49: TQRShape;
    QRShape58: TQRShape;
    QRShape63: TQRShape;
    QRShape69: TQRShape;
    QRShape117: TQRShape;
    QRShape126: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRExpr65: TQRExpr;
    QRDBText2: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape138: TQRShape;
    QRShape145: TQRShape;
    QRShape153: TQRShape;
    QRShape160: TQRShape;
    QRShape168: TQRShape;
    QRShape176: TQRShape;
    QRShape184: TQRShape;
    QRShape191: TQRShape;
    QRShape137: TQRShape;
    QRShape144: TQRShape;
    QRShape152: TQRShape;
    QRShape159: TQRShape;
    QRShape167: TQRShape;
    QRShape175: TQRShape;
    QRShape183: TQRShape;
    QRShape192: TQRShape;
    QRBand24: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr25: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRShape56: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape53: TQRShape;
    QRExpr53: TQRExpr;
    QRBand28: TQRBand;
    QRExpr74: TQRExpr;
    QRExpr75: TQRExpr;
    QRExpr76: TQRExpr;
    QRExpr77: TQRExpr;
    QRExpr78: TQRExpr;
    QRExpr79: TQRExpr;
    QRExpr80: TQRExpr;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr81: TQRExpr;
    QRShape17: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape38: TQRShape;
    QRShape41: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape54: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape40: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape42: TQRShape;
    QRShape60: TQRShape;
    QRLabel34: TQRLabel;
    QRShape66: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape61: TQRShape;
    QRShape67: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape72: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape84: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape96: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape22: TQRShape;
    QRLabel58: TQRLabel;
    QRShape28: TQRShape;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape20: TQRShape;
    QRShape34: TQRShape;
    QRShape39: TQRShape;
    QRShape48: TQRShape;
    QRShape57: TQRShape;
    QRShape62: TQRShape;
    QRShape68: TQRShape;
    QRLabel43: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape71: TQRShape;
    QRShape97: TQRShape;
    QRShape100: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape101: TQRShape;
    QRShape104: TQRShape;
    QRShape108: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape146: TQRShape;
    PageFooterBand1: TQRBand;
    QRShape37: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape55: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel65: TQRLabel;
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand21BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand22BeforePrint(Sender: TQRCustomBand;
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
    procedure QRGroup11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup17BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr74Print(sender: TObject; var Value: String);
    procedure QRExpr80Print(sender: TObject; var Value: String);
    procedure QRExpr79Print(sender: TObject; var Value: String);
    procedure QRExpr78Print(sender: TObject; var Value: String);
    procedure QRExpr81Print(sender: TObject; var Value: String);
    procedure QRExpr75Print(sender: TObject; var Value: String);
    procedure QRExpr76Print(sender: TObject; var Value: String);
    procedure QRExpr77Print(sender: TObject; var Value: String);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRDBText68Print(sender: TObject; var Value: String);
    procedure QRDBText69Print(sender: TObject; var Value: String);
    procedure QRDBText70Print(sender: TObject; var Value: String);
    procedure QRBand22AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand20AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand21AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand24AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand28AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand27AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand26AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Déclarations privées }
    Total:real;
    vide:string;
    first,saut, saut_1:boolean;
    HateurLigne,HauteurTitre:integer;
  public
    { Déclarations publiques }
  end;

var
  FEtaAnnex: TFEtaAnnex;

implementation

uses DaCommun, Daspecia,  TypeElmt, USQL;

{$R *.DFM}


procedure TFEtaAnnex.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var Ste:string;
begin
  first:=true;
  HauteurTitre:=38;
  HateurLigne:=18;

  Commun.Consolide.Open;
  Commun.Consolide.First;
  QRLabel3.Caption:=Commun.ConsolideRS.Value;
  QRLabel21.Caption:=Commun.ConsolideRS.Value;
  QRLabel35.Caption:=Commun.ConsolideRS.Value;
  QRLabel44.Caption:=Commun.ConsolideRS.Value;
  QRLabel59.Caption:=Commun.ConsolideRS.Value;

  Commun.Consolide.Next;
  Ste:='SCIM '+ Commun.ConsolideRS.Value;
  QRLabel3.Caption:=Ste;
  QRLabel5.Caption:=Ste;
  QRLabel34.Caption:=Ste;
  QRLabel42.Caption:=Ste;
  QRLabel58.Caption:=Ste;

  Commun.Consolide.Next;
  Ste:='SCIM '+ Commun.ConsolideRS.Value;
  QRLabel3.Caption:=Ste;
  QRLabel13.Caption:=Ste;
  QRLabel27.Caption:=Ste;
  QRLabel37.Caption:=Ste;
  QRLabel46.Caption:=Ste;

  Commun.Consolide.Next;
  Ste:='SCIM '+ Commun.ConsolideRS.Value;
  QRLabel3.Caption:=Ste;
  QRLabel16.Caption:=Ste;
  QRLabel28.Caption:=Ste;
  QRLabel38.Caption:=Ste;
  QRLabel52.Caption:=Ste;

  Commun.Consolide.Next;
  Ste:='SCIM '+ Commun.ConsolideRS.Value;
  QRLabel3.Caption:=Ste;
  QRLabel17.Caption:=Ste;
  QRLabel29.Caption:=Ste;
  QRLabel47.Caption:=Ste;
  QRLabel53.Caption:=Ste;

  Commun.Consolide.Next;
  Ste:='SCIM '+ Commun.ConsolideRS.Value;
  QRLabel3.Caption:=Ste;
  QRLabel18.Caption:=Ste;
  QRLabel31.Caption:=Ste;
  QRLabel48.Caption:=Ste;
  QRLabel54.Caption:=Ste;


  Commun.Consolide.Next;
  Ste:='SCIM '+ Commun.ConsolideRS.Value;
  QRLabel3.Caption:=Ste;
  QRLabel19.Caption:=Ste;
  QRLabel32.Caption:=Ste;
  QRLabel49.Caption:=Ste;
  QRLabel55.Caption:=Ste;

//  Commun.Consolide.Next;
//  QRLabel20.Caption:=Commun.ConsolideNom.Value;
//  QRLabel33.Caption:=Commun.ConsolideNom.Value;
//  QRLabel51.Caption:=Commun.ConsolideNom.Value;
//  QRLabel56.Caption:=Commun.ConsolideNom.Value;

  vide:='                                                                      '+
        '                                                                      '+
        '                                                                      '+
        '                                                                      '+
        '                                                                      ';
  QRLabel2.Caption := 'Période du '+ FormatDateTime('dd/MM/yyyy',commun.SocieteExerDeb.Value)
                    + ' au '+ FormatDateTime('dd/MM/yyyy',commun.SocieteExerFin.Value);
  Total:=0;
  QRBand21.Height:=1;
  QRBand21.Height:=1;QRLabel41.Caption :=vide;
  QRGroup15.Height:=0;QRLabel74.caption:=vide;
  QRBand28.Height:=1;QRLabel75.caption:=vide;
  QRGroup16.Height:=0;
  QRBand24.Height :=1;
  DASQL.ParamEF.Close;
  DASQL.ParamEF.SQL.Clear;
  DASQL.ParamEF.SQL.Add('Select * from  Titre a, SousTitr b, ');
  DASQL.ParamEF.SQL.Add('SouSouTi c, UnionCp d, GroupCpt e,');
  DASQL.ParamEF.SQL.Add('consolidee f');
  DASQL.ParamEF.SQL.Add('where (a.Annexe)and(b.Annexe)and (c.Annexe) and(d.Annexe) and ');
  DASQL.ParamEF.SQL.Add(' (a.Numero=b.Titre)and(b.Numero=c.SouTitre) and');
  DASQL.ParamEF.SQL.Add('(c.Numero=d.SSTitre) and (d.Numero=e.UnionCp)and');
  DASQL.ParamEF.SQL.Add('(f.CompteD>=e.DebutCpt)and(f.CompteD<=e.FinCompte)');
  DASQL.ParamEF.SQL.Add('and(((f.Debit1-f.Credit1)<>0)or((f.Debit2-f.Credit2)<>0)');
  DASQL.ParamEF.SQL.Add('or((f.Debit3-f.Credit3)<>0)or((f.Debit4-f.Credit4)<>0)');
  DASQL.ParamEF.SQL.Add('or((f.Debit5-f.Credit5)<>0)or((f.Debit6-f.Credit6)<>0))');
  //DASQL.ParamEF.SQL.Add('or((f.Debit7-f.Credit7)<>0))');
  DASQL.ParamEF.SQL.Add('order by a.typa, a.rang, a.numero, b.rang, b.Numero, c.rang,');
  DASQL.ParamEF.SQL.Add('c.Numero, d.rang, d.Numero, e.rang, e.IntitGroup, e.DebutCpt, f.CompteD');
  DASQL.ParamEF.open;
  if DASQL.ParamEF.eof then showMessage('Vide');
end;

procedure TFEtaAnnex.QRBand20BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DASQL.ParamEFLeDetail.Value=2)and (total>0)then
  begin
    QRBand20.Height:=HateurLigne;QRLabel50.caption:='';
    //    Commun.SelGroupCpt.close;
    //    Commun.SelGroupCpt.Params[0].AsInteger:=DASQL.ParamEFNumero_4.Value;
    //    Commun.SelGroupCpt.open;
    //    QRLabel1.Caption:=Commun.SelGroupCptIntitGroup.Value;
    Total:=0;
  end;
  if QRGroup17.Height >0 then
  begin
    QRBand20.Frame.DrawTop:=true;
    QRBand20.Frame.DrawBottom :=true;
    QRLabel1.Font.Style :=[fsBold];
    QRLabel1.Left := 50;
    QRLabel1.Caption:='Total '+QRLabel1.Caption;
  end
  else
  begin
    QRBand20.Frame.DrawTop:=false;
    QRBand20.Frame.DrawBottom :=false;
    QRLabel1.Font.Style :=[fsItalic];
    QRLabel1.Left := 11;
  end;
end;

procedure TFEtaAnnex.QRBand21BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total:=Total+abs(DASQL.ParamEFMontant1.Value)+
         abs(DASQL.ParamEFMontant1.Value)+
         abs(DASQL.ParamEFMontant2.Value)+
         abs(DASQL.ParamEFMontant3.Value)+
         abs(DASQL.ParamEFMontant4.Value)+
         abs(DASQL.ParamEFMontant5.Value)+
         abs(DASQL.ParamEFMontant6.Value)+
         abs(DASQL.ParamEFMontant7.Value);
  if (DASQL.ParamEFLeDetail.Value=3)and (total>0) then
  begin
    QRBand21.Height :=HateurLigne;QRLabel41.caption:='';
    Total:=0;
  end
  else
  begin
    QRBand21.Height :=0;QRLabel41.caption:=vide;
  end;
end;


procedure TFEtaAnnex.QRBand22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var CodeExerN,CodeExerN_1:string;
begin
  Commun.CodeExercice(Commun.SocieteCode.Value,CodeExerN,CodeExerN_1 );
  QRLabel64.Caption:= 'Annexes aux Etats financiers de l''exercice '+CodeExerN;
  QRLabel2.caption:= ' Période du '+FormatDateTime('dd/mm/yyyy',Commun.SocieteExerDeb.Value)+' '+
                     FormatDateTime('dd/mm/yyyy',Commun.SocieteExerFin.Value);

  //(QuickRep3.PageNumber = 1)or
  if first or Saut or saut_1   then
  begin
    QRBand22.Height:=135;
  end
   else
   begin
     QRBand22.Height:=165;
   end;
   Saut:=false;
   saut_1:=false;
   first:=false;
end;

procedure TFEtaAnnex.QRGroup14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var st:string;
begin
  DASQL.SelUnionCp.close;
  DASQL.SelUnionCp.parameters[0].Value:=DASQL.ParamEFNumero_3.Value;
  DASQL.SelUnionCp.Open;
  st:=DASQL.SelUnionCpIntitule.value;
  QRLabel39.Caption := st;
  QRLabel40.Caption :='Total '+ st;
end;









procedure TFEtaAnnex.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr54Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr5Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr47Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr37Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr27Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr17Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr16Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr24Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr63Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr13Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr53Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr43Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr33Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr23Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr58Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr65Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr64Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr25Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr34Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr35Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr44Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr45Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr2Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr55Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr6Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr48Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr38Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr28Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr18Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr26Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr4Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr59Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr7Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr49Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr39Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr29Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr19Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr36Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr10Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr60Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr8Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr50Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr40Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr30Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr20Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr46Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr12Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr61Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr9Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr51Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr41Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr31Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr21Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr56Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr14Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr62Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr11Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr52Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr42Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);

end;

procedure TFEtaAnnex.QRExpr32Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr22Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr57Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  PageFooterBand1.Frame.DrawTop :=false;
  PageFooterBand1.Frame.DrawBottom :=false;
end;

procedure TFEtaAnnex.QRGroup11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DASQL.ParamEFDetailT.Value=0 then
  begin
    QRGroup11.Height:=HauteurTitre;
    QRGroup12.Height:=1;
    QRBand25.Height:=1;
  end
  else
  begin
    QRGroup11.Height:=HateurLigne;
    QRGroup12.Height:=HauteurTitre;
    QRBand25.Height:=HateurLigne;
  end;

  if DASQL.ParamEFSaut.Value<>0 then
  begin
    saut:=true;
//    QRGroup11.ForceNewpage :=true;
    QuickRep3.NewColumn ;
  end
//  else
//    QRGroup11.ForceNewPage :=false;
  ;
end;

procedure TFEtaAnnex.QRGroup12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DASQL.ParamEFSaut_1.Value<>0 then
  begin
    saut_1:=true;
   // QRGroup12.ForceNewpage :=true//
    QuickRep3.NewColumn  ;
  end
  else
    QRGroup12.ForceNewPage :=false;

  if DASQL.ParamEFDetail.Value=0 then
  begin
    if QRGroup12.Height>1 then QRGroup12.Height:=40;
    QRGroup13.Height:=1;
    QRBand26.Height:=1;
  end
  else
  begin
    QRGroup12.Height:=HateurLigne;
    QRGroup13.Height:=HauteurTitre;
    QRBand26.Height:=HateurLigne;
  end;
end;

procedure TFEtaAnnex.QRGroup13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  if DASQL.ParamEFSaut_2.Value then QuickRep3.newpage;
  if DASQL.ParamEFDetail_1.Value=0 then
  begin
    QRGroup14.Height:=1;
    QRBand27.Height:=1;
  end
  else
  begin
    QRGroup14.Height:=HateurLigne;
    QRBand27.Height:=HateurLigne;
  end;
end;

procedure TFEtaAnnex.QRGroup17BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DASQL.ParamEFAffichDet.Value=0 then
  begin
    QRGroup17.Height :=0;
    QRBand20.Height :=0; QRLabel50.Caption:=vide;
  end
  else
  begin
    QRGroup17.Height :=HateurLigne;
    QRBand20.Height :=HateurLigne;; QRLabel50.Caption:='';
  end;
  DaSQL.SelGroupCpt.close;
  DaSQL.SelGroupCpt.Parameters[0].Value:=DASQL.ParamEFNumero_4.Value;
  DaSQL.SelGroupCpt.open;
  QRLabel73.Caption:=DaSQL.SelGroupCptIntitGroup.Value;
  QRLabel1.Caption:=DaSQL.SelGroupCptIntitGroup.Value;
end;

procedure TFEtaAnnex.QRBand24BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DASQL.ParamEFLeDetail.Value=0)and(total>0)then
  begin
    QRBand24.Height :=HateurLigne;QRLabel71.caption:='';
    DASQL.SelNumCpt.close;
    DASQL.SelNumCpt.Parameters[0].Value:=DASQL.ParamEFDebutCpt.Value;
    DASQL.SelNumCpt.open;
    if DASQL.SelNumCpt.EOF then
      ShowMessage('compléter le plan comptable par '+DASQL.ParamEFDebutCpt.Value);
    QRLabel12.Caption:=DASQL.SelNumCptIntitule.Value;
    Total:=0;
  end
  else
  begin
    QRBand24.Height :=0;QRLabel71.caption:=vide;
  end;
end;


procedure TFEtaAnnex.QRExpr74Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr80Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr79Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr78Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr81Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr75Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr76Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;

procedure TFEtaAnnex.QRExpr77Print(sender: TObject; var Value: String);
begin
  Value:=Parenthese(Value,true);
end;


procedure TFEtaAnnex.QRLabel39Print(sender: TObject; var Value: String);
begin
  if value='Brut' then value:='';
end;

procedure TFEtaAnnex.QRDBText68Print(sender: TObject; var Value: String);
begin
  Value:='Total '+Value;
end;

procedure TFEtaAnnex.QRDBText69Print(sender: TObject; var Value: String);
begin
  Value:='Total '+Value;
end;

procedure TFEtaAnnex.QRDBText70Print(sender: TObject; var Value: String);
begin
  Value:='Total '+Value;
end;



procedure TFEtaAnnex.QRBand22AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    QRBand22.Height := 163;
    Saut:=false;
    Saut_1:=false;
end;

procedure TFEtaAnnex.QRBand20AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr54.Reset;
  QRExpr63.Reset;
  QRExpr62.Reset;
  QRExpr61.Reset;
  QRExpr60.Reset;
  QRExpr59.Reset;
  QRExpr55.Reset;
  QRExpr64.Reset;
end;

procedure TFEtaAnnex.QRBand21AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr1.Reset;
  QRExpr24.Reset;
  QRExpr14.Reset;
  QRExpr12.Reset;
  QRExpr10.Reset;
  QRExpr4.Reset;
  QRExpr2.Reset;
  QRExpr65.Reset;
end;

procedure TFEtaAnnex.QRBand24AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr25.Reset;
  QRExpr52.Reset;
  QRExpr51.Reset;
  QRExpr50.Reset;
  QRExpr49.Reset;
  QRExpr48.Reset;
  QRExpr47.Reset;
  QRExpr53.Reset;
end;

procedure TFEtaAnnex.QRBand28AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr81.Reset;
  QRExpr75.Reset;
  QRExpr76.Reset;
  QRExpr77.Reset;
  QRExpr78.Reset;
  QRExpr79.Reset;
  QRExpr80.Reset;
  QRExpr74.Reset;
end;

procedure TFEtaAnnex.QRBand27AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr34.Reset;
  QRExpr38.Reset;
  QRExpr39.Reset;
  QRExpr40.Reset;
  QRExpr41.Reset;
  QRExpr42.Reset;
  QRExpr43.Reset;
  QRExpr37.Reset;
end;

procedure TFEtaAnnex.QRBand26AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr27.Reset;
  QRExpr33.Reset;
  QRExpr32.Reset;
  QRExpr31.Reset;
  QRExpr30.Reset;
  QRExpr29.Reset;
  QRExpr28.Reset;
  QRExpr35.Reset;
end;

end.
