unit UEtNvTVA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls,DB, StdCtrls, DBCtrls;

type
  TFEtNvTVA = class(TForm)
    QuickRep7: TQuickRep;
    QRBand39: TQRBand;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRShape68: TQRShape;
    QRShape74: TQRShape;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRDBText51: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText90: TQRDBText;
    QRBand41: TQRBand;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText94: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRLabel28: TQRLabel;
    QRBand5: TQRBand;
    QRShape14: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel19: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand6: TQRBand;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape28: TQRShape;
    QRDBText19: TQRDBText;
    QRShape29: TQRShape;
    QRDBText20: TQRDBText;
    QRShape30: TQRShape;
    QRDBText21: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand7: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRExpr5: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRBand8: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRGroup4:TQRGroup;
    procedure QRDBText91Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep7BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand41BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    function  Mois(Numero:word):string;

    procedure  Calculer(perDe,perA,destination:string;isCalcul:boolean);
    function  CalculerLigneRubrique(perDe,perA:string):Boolean;
    function  CalculerCompte(perDe,perA:string):Boolean;
  public
    { Public declarations }
    De,A,RS,desta: string;
    isCalc, detail,Clients:boolean;
    CumulHT,CumulTVA:real;
    procedure Imprimeo(perDe,perA,destination:string;Typa:shortint;isCalcul,det,Tie:boolean);
    function  Requete(Clients:boolean;PerDe, PerA,mode,destination:string):boolean;
    procedure CreerListe(destination:string);
  end;

var
  FEtNvTVA: TFEtNvTVA;

implementation

uses Daspecia, UPStocke, TypeElmt, DaCommun, UConnect;

{$R *.dfm}

procedure TFEtNvTVA.Imprimeo(perDe,perA,destination:string;Typa:shortint;isCalcul,det,Tie:boolean);
begin
  desta:=destination;
  Clients:=Tie;
  Detail:=Det;
  isCalc:=isCalcul;
  De:=PerDe;
  A:=PerA;
  case typa of
    0:QuickRep2.preview;
    2:if (desta>'0')and IsCalcul then
        Calculer(De,A,destination,isCalcul)
      else
        QuickRep7.Preview;
  end;
end;


function TFEtNvTVA.CalculerCompte(perDe,perA:string):boolean;
begin
  PStockee.CalcRubrique.Close;
  PStockee.CalcRubrique.SQL.Clear;
  PStockee.CalcRubrique.SQL.Add('SELECT Sum(CASE WHEN b.Debit=''D'' THEN Montant ELSE -Montant END) AS Mt');
  PStockee.CalcRubrique.SQL.Add('from Journal a, Eltjrn b');
  PStockee.CalcRubrique.SQL.Add('WHERE(a.code=b.journal)');
  if not (Special.TParametrNotPeriode.Value<>'0') then
    PStockee.CalcRubrique.SQL.Add('and(a.periode>='''+perDe+''')and(a.periode<='''+perA+'Z'')')
  else
    PStockee.CalcRubrique.SQL.Add('and(a.periode<='''+perA+'Z'')');
  PStockee.CalcRubrique.SQL.Add('and(b.Compte>='''+Special.TParametrCompteDe.Value+''')and(b.Compte<='''+Special.TParametrCompteA.Value+'Z'')');
  PStockee.CalcRubrique.Open;
  if PStockee.CalcRubrique.Eof then
    Result:=False
  else
    Result:=True;
end;

function TFEtNvTVA.CalculerLigneRubrique(perDe,perA:string):boolean;
begin
  PStockee.CalcRubrique.Close;
  PStockee.CalcRubrique.SQL.Clear;
  PStockee.CalcRubrique.SQL.Add('select Sum(MontantTVA) as Mt from RembTVA2');
  PStockee.CalcRubrique.SQL.Add('Where (rubrique>='''+Special.TParametrRubrique.Value+''')');
  PStockee.CalcRubrique.SQL.Add('and (rubrique<='''+Special.TParametrRubrique.Value+'Z'')');
  if not (Special.TParametrNotPeriode.Value<>'0') then
    PStockee.CalcRubrique.SQL.Add('and(periode>='''+perDe+''')and(periode<='''+perA+'Z'')')
  else
    PStockee.CalcRubrique.SQL.Add('and(periode<='''+perA+'Z'')');
  if Special.TParametrImpoCompte.Value ='Taxable' then
    PStockee.CalcRubrique.SQL.Add('and (NonTaxable=0)');

  if Special.TParametrImpoCompte.Value ='Non Taxable' then
    PStockee.CalcRubrique.SQL.Add('and (NonTaxable<>0)');

  if Special.TParametrImpoTiers.Value ='Assujetti' then
   PStockee.CalcRubrique.SQL.Add('and (NonAssujetti=0)');

  if Special.TParametrImpoTiers.Value ='Non assujetti' then
    PStockee.CalcRubrique.SQL.Add('and (NonAssujetti<>0)');

  if Special.TParametrImpoTiers.Value ='Attestation de destination' then
    PStockee.CalcRubrique.SQL.Add('and (Attestation=1)');

  PStockee.CalcRubrique.Open;

  if PStockee.CalcRubrique.Eof then
    Result:=False
  else
    Result:=True;
end;

procedure TFEtNvTVA.Calculer(perDe,perA,destination:string;isCalcul:boolean);
var resultat:real;
  signe:integer;
begin
  if isCalcul then
  begin
    Special.TParametr.close;
    Special.TParametr.SQL.Clear;
    Special.TParametr.SQL.Add('select * from Parametr order by Numero');
    Special.TParametr.Open;

    while not Special.TParametr.Eof do
    begin
      resultat:=0;
      if Special.TParametrTypCalcul.value ='Opération' then
      begin
        Special.TParametr.Next;
        Continue;
      end;
      if Special.TParametrTypCalcul.value ='Rubrique' then
      begin
        if  Special.TParametrSens.Value='Au débit' then
          signe:=1
        else
          signe:=-1;
        CalculerLigneRubrique(perDe,perA);
        if PStockee.CalcRubrique.Fields[0].Value <>null then
          resultat:=signe*PStockee.CalcRubrique.Fields[0].Value
       else
         resultat:=0;
      end;

      if Special.TParametrTypCalcul.value ='Compte' then
      begin
        if  Special.TParametrSens.Value='Au débit' then
          signe:=1
        else
          signe:=-1;
       CalculerCompte(perDe,perA);
       if PStockee.CalcRubrique.Fields[0].Value <>null then
         resultat:=signe*PStockee.CalcRubrique.Fields[0].Value
       else
         resultat:=0;
      end;

      if Special.TParametrTypCalcul.value ='Constante' then
        resultat:=Special.TParametrConstante.value;

      if Special.TParametrTypCalcul.value <='0' then
        resultat:=0;
      if Special.TParametrPositifSeul.value<>'0' then
      begin
        if resultat<0 then resultat:=0;
      end;
      if Special.TParametrNegatifSeul.value<>'0' then
      begin
        if resultat>0 then
          resultat:=0
        else
          resultat:=-resultat;
      end;
      if Special.TParametrDesactiver.value<>'0' then
          resultat:=0;

      Special.TParametr.Edit;
      Special.TParametrValeur.Value:=Resultat;
      Special.TParametr.Post;
      //showmessage('Valeur de '+Special.TParametrLibelle.value+' = '+formatFloat('#,##0.##',Special.TParametrValeur.Value));
      Special.TParametr.Next;
    end;

    //DaConnect.C_Compta.CommitTrans;
    Special.TParametr.first;
    while not Special.TParametr.Eof do
    begin
      if Special.TParametrTypCalcul.value ='Opération' then
      begin
        try
          PStockee.qOperationTVA.Close;
          PStockee.qOperationTVA.SQL.clear;
          PStockee.qOperationTVA.SQL.Add('select '+Special.TParametrOperation.Value+' As Mt' );
          PStockee.qOperationTVA.SQL.Add('from OperationTVA');
          PStockee.qOperationTVA.Open;
          PStockee.qOperationTVA.Requery;
          resultat:=PStockee.qOperationTVAMt.value;
        except
          On EDataBaseError do
            resultat:=1;
          else
            resultat:=1;
        end;
        if Special.TParametrPositifSeul.value<>'0' then
        begin
          if resultat<0 then resultat:=0;
        end;
        if Special.TParametrNegatifSeul.value<>'0' then
        begin
          if resultat>0 then
            resultat:=0
          else
            resultat:=-resultat;
        end;
        if Special.TParametrDesactiver.value<>'0' then
          resultat:=0;

        Special.TParametr.Edit;
        Special.TParametrValeur.Value:=Resultat;
        Special.TParametr.Post;
      end;
      Special.TParametr.Next;
    end;
  end
  else
  begin
    try
      Special.TParametr.close;
      Special.TParametr.Connection := DaConnect.C_Document;
      Special.TParametr.SQL.Clear;
      Special.TParametr.SQL.Add('select * from '+Desta+' order by Numero');
      Special.TParametr.Open;
    except
      On EDataBaseError do
        showMessage(Desta+':Ce fichier n''existe pas');
      else
      begin
        Special.TParametr.Connection := DaConnect.C_Compta;
        Special.TParametr.SQL.Clear;
        Special.TParametr.SQL.Add('select * from Parametr order by Numero');
        Special.TParametr.Open;
      end;
    end;
  end;
  if (destination>'0')and isCalcul then
    PStockee.CreerCopie('Parametr',desta);
end;


procedure TFEtNvTVA.QRDBText91Print(sender: TObject; var Value: String);
begin
  VAlue:='('+Value+')';
end;

procedure TFEtNvTVA.QRDBText1Print(sender: TObject; var Value: String);
begin
  Value:='('+Value+')';
end;

function TFEtNvTVA.Mois(Numero:word):string;
begin
  Case Numero of
     1:Result:='Janvier';
     2:Result:='Février';
     3:Result:='Mars';
     4:Result:='Avril';
     5:Result:='Mai';
     6:Result:='Juin';
     7:Result:='Juillet';
     8:Result:='Août';
     9:Result:='Septembre';
    10:Result:='Octobre';
    11:Result:='Novembre';
    12:Result:='Decembre';
  end;
end;


function TFEtNvTVA.Requete(Clients:boolean;PerDe, PerA,mode,destination:string):boolean;
var first:boolean;
begin
  first:=true;
  PStockee.qParametrTiers.Close;
  if Clients then
  begin
    PStockee.qParametrTiers.Parameters[0].Value :=7;
    PStockee.qParametrTiers.Parameters[1].Value :='Clients';
    PStockee.qParametrTiers.Open;
  end
  else
  begin
    PStockee.qParametrTiers.Parameters[0].Value :=12;
    PStockee.qParametrTiers.Parameters[1].Value :='Fournisseurs';
  end;
  PStockee.qParametrTiers.Open;


  if (mode ='Ouvrir') then
  begin
    PStockee.ListeTiers.Close;
    PStockee.ListeTiers.SQL.Clear;
  end;

  if (mode ='Créer') then
  begin
    CreerListe(destination);
    PStockee.ViderFichier(destination);
  end;

  if (destination>'0')and (mode='Ouvrir') then
    PStockee.ListeTiers.SQL.Add('select * from '+destination+' x')
  else
  begin
    while not PStockee.qParametrTiers.EOF do
    begin

      if (mode ='Ouvrir') then
      begin
        if not first then
          PStockee.ListeTiers.SQL.Add('Union ')
        else
          first:=False;
      end;

      if (mode ='Créer') then
      begin
        PStockee.ListeTiers.Close;
        PStockee.ListeTiers.SQL.Clear;
        PStockee.ListeTiers.SQL.Add('insert into '+destination+'(Numero ,Description ,Tiers  ,val ,NIF ,JrTVA , statistique ,'+
                                'DateEsc ,NumFact , Compte , Raison ,ObjetFact ,Adr ,MontantHT ,TVA) ');
      end;

      PStockee.ListeTiers.SQL.Add('select '+IntToStr(PStockee.qParametrTiersNumero.Value)+' as numero, '+
                                ''''+PStockee.qParametrTiersDescription.Value +''' as Description, ' +
                                ''''+PStockee.qParametrTiersTiers.Value +''' as Tiers, '+
                                FloatToStr(PStockee.qParametrTiersValeur.Value)+'/1' +' as Val, ' );
      if (PStockee.qParametrTiersSens.Value >='Au débit')and
        (PStockee.qParametrTiersSens.Value <='Au débitZ') then
        PStockee.ListeTiers.SQL.Add('NIF, JrTVA, Statistique, DateEsc, NumFact, x.Compte, RS as raison, ObjetFact, Adresse as Adr, HTLigne as MontantHT, MontantTVA as TVA ')
      else
      begin
        if (PStockee.qParametrTiersImpoCompte.Value ='Taxable')and(PStockee.qParametrTiersTiers.Value<>'Clients étrangers') then
          PStockee.ListeTiers.SQL.Add('NIF,JrTVA, Statistique, DateEsc, NumFact, x.Compte, RS as raison, ObjetFact, Adresse as Adr, -MontantTVA as MontantHT, -MontantTVA*Taux/100 as TVA ')
        else
          PStockee.ListeTiers.SQL.Add('NIF,JrTVA, Statistique, DateEsc, NumFact, x.Compte, RS as raison, ObjetFact, Adresse as Adr, -MontantTVA as MontantHT, 0 as TVA ')
      end;
      PStockee.ListeTiers.SQL.Add('from RembTVA2 x');
      PStockee.ListeTiers.SQL.Add('where(periode>='''+PerDe+''')and(periode<='''+PerA+'Z'')');
      PStockee.ListeTiers.SQL.Add('and (rubrique>='''+PStockee.qParametrTiersRubrique.Value+''')');
      PStockee.ListeTiers.SQL.Add('and (rubrique<='''+PStockee.qParametrTiersRubrique.Value+'Z'')');

      if PStockee.qParametrTiersImpoCompte.Value ='Taxable' then
        PStockee.ListeTiers.SQL.Add('and (NonTaxable=0)');

      if PStockee.qParametrTiersImpoCompte.Value ='Non Taxable' then
        PStockee.ListeTiers.SQL.Add('and (NonTaxable<>0)');

      if PStockee.qParametrTiersImpoTiers.Value ='Assujetti' then
        PStockee.ListeTiers.SQL.Add('and (NonAssujetti=0)');

      if PStockee.qParametrTiersImpoTiers.Value ='Non assujetti' then
        PStockee.ListeTiers.SQL.Add('and (NonAssujetti<>0)');

      if PStockee.qParametrTiersImpoTiers.Value ='Attestation de destination' then
        PStockee.ListeTiers.SQL.Add('and (Attestation=1)');

      if (mode ='Créer') then
        PStockee.ListeTiers.ExecSQL;

      PStockee.qParametrTiers.Next;
    end;
  end;
  if (mode ='Ouvrir') then
  begin
    PStockee.ListeTiers.SQL.Add('Order by Numero, Raison, DateEsc, NIF, x.Compte');   //Description,
    PStockee.ListeTiers.Open;
    Result:=(PStockee.ListeTiers.RecordCount<>0);
  end
  else
    Result:=true;
end;


procedure TFEtNvTVA.CreerListe(destination:string);
begin
  try
    PStockee.CreTRembTVA.SQL.Clear;
    PStockee.CreTRembTVA.SQL.Add('Create Table '+ destination+'(');
    PStockee.CreTRembTVA.SQL.Add('Numero Integer,');
    PStockee.CreTRembTVA.SQL.Add('Description  char(60),');
    PStockee.CreTRembTVA.SQL.Add('Tiers  char(60),');
    PStockee.CreTRembTVA.SQL.Add('val Float,');
    PStockee.CreTRembTVA.SQL.Add('NIF char(20),');
    PStockee.CreTRembTVA.SQL.Add('JrTVA char(10),');
    PStockee.CreTRembTVA.SQL.Add('statistique char(20),');
    PStockee.CreTRembTVA.SQL.Add('DateEsc  Date,');
    PStockee.CreTRembTVA.SQL.Add('NumFact char(20),');
    PStockee.CreTRembTVA.SQL.Add('Compte char(20),');
    PStockee.CreTRembTVA.SQL.Add('Raison char(50),');
    PStockee.CreTRembTVA.SQL.Add('ObjetFact char(60),');
    PStockee.CreTRembTVA.SQL.Add('Adr char(60),');
    PStockee.CreTRembTVA.SQL.Add('MontantHT float,');
    PStockee.CreTRembTVA.SQL.Add('TVA float');
    PStockee.CreTRembTVA.SQL.Add(')');
    PStockee.CreTRembTVA.ExecSQL;
  except
    On EDataBaseError do;
    else;
  end;
end;

procedure TFEtNvTVA.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel34.Caption:=Mois(StrToInt(Copy(De,6,2)))+' '+Copy(De,1,4);
  QRLabel35.Caption:=Mois(StrToInt(Copy(A,6,2)))+' ' +Copy(A,1,4);
  Requete(Clients,De,A,'Ouvrir',desta);
  if Clients then
  begin
    QRLabel28.Caption:='Liste des clients';
  end
  else
  begin
    QRLabel28.Caption:='Liste des fournisseurs';
  end;
  if not Detail then
  begin
    QRGroup4.Height:=0;
    QRBand4.Height:=0;
  end
  else
  begin
    QRGroup4.Height:=23;
    QRBand4.Height:=17;
  end
end;

procedure TFEtNvTVA.QuickRep7BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel2.Caption:=Mois(StrToInt(Copy(De,6,2)))+' '+Copy(De,1,4);
  QRLabel3.Caption:=Mois(StrToInt(Copy(A,6,2)))+' '+Copy(A,1,4);
  Calculer(De,A,desta,isCalc);
end;

procedure TFEtNvTVA.QRBand41BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Special.TParametrNonAfficher.value<>'0' then
    QRBand41.Height:=0
  else
    QRBand41.Height:=28;
end;

procedure TFEtNvTVA.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin // MOMBA NY DECLARATION TVA PAYEES EN DOUANE
  if not (PStockee.ListeTiersTiers.Value ='Fournisseurs étrangers') then
  begin
    QRLabel11.Caption:=PStockee.ListeTiersRaison.Value;
    QRLabel12.Caption:=PStockee.ListeTiersAdr.Value;

    QRLabel15.Caption:=PStockee.ListeTiersNIF.Value;
    QRLabel16.Caption:=PStockee.ListeTiersStatistique.Value;
  end
  else
  begin
    QRLabel11.Caption:='Douane';
    QRLabel12.Caption:='Décl N° '+PStockee.ListeTiersNumFact.Value+
                       ' du '+DateTimeToStr(PStockee.ListeTiersDateEsc.Value);
    QRLabel15.Caption:='';
    QRLabel16.Caption:='';
  end;
end;

end.
