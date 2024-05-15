unit VueConsolide_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,StrUtils,
  Dialogs, StdCtrls;

type
  TFVueConsolide = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Memo2: TMemo;
  private
    { Private declarations }
    procedure OuvrirExerciceConso;
    procedure Creer_EltjrnConso;
    procedure Creer_BalanceConso;
    procedure Creer_BalanceConso_periode;
    procedure Creer_NumCptConso;
    procedure Creer_NumAdresConso;
    procedure Creer_NumDiverConso;
    procedure Asehoy;
  public
    { Public declarations }
  end;

var
  FVueConsolide: TFVueConsolide;

procedure AsehoyVueConsolide;

implementation

uses UConnect, UPStocke, DaCommun, Daspecia;

{$R *.dfm}

procedure AsehoyVueConsolide;
begin
  try
    FVueConsolide := TFVueConsolide.Create(Application);
    FVueConsolide.Asehoy;
  finally
    FVueConsolide.Free;
  end
end;

procedure TFVueConsolide.Asehoy;
begin
  try
    OuvrirExerciceConso;
    Creer_EltjrnConso;
    Creer_BalanceConso;
    Creer_BalanceConso_periode;
    Creer_NumCptConso;
    Creer_NumAdresConso;
    Creer_NumDiverConso;
  except
    On E:Exception do
      showMessage(E.Message);
  end;
  showModal;
end;

procedure TFVueConsolide.OuvrirExerciceConso;
begin
  DaConnect.C_Document.Open;
  Commun.q_exercice_conso.Close;
  Commun.q_exercice_conso.Parameters[0].Value := RightStr(DaConnect.C_Document.DefaultDatabase,4);
  Commun.q_exercice_conso.Open;
end;

procedure TFVueConsolide.Creer_EltjrnConso;
var first:boolean;
begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS balance_conso;');
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS balance_conso2;');
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS balance_conso_periode;');
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS eltjrn_conso;');

  PStockee.Operation1.SQL.Add('CREATE VIEW eltjrn_conso AS');
  first := true;
  Commun.q_exercice_conso.First;
  while not Commun.q_exercice_conso.Eof do
  begin
    if not first then
      PStockee.Operation1.SQL.Add('UNION');
    first := false;
    PStockee.Operation1.SQL.Add('SELECT '''+Commun.q_exercice_consochemin.Value+''' AS bdd, t.periode,t.jour,t.tiers,t.codejrnx, t.numero,  t.journal, t.debit, t.compte, t.montant, t.izy, t.libelle,t.contrepartie,t.nbcontre,t.qte,t.dateesc as datefact,t.numfact, t.colis,t.typx,t.sigletaxe');
    PStockee.Operation1.SQL.Add('FROM dblink(''dbname='+Commun.q_exercice_consochemin.Value+' host='+Special.param_serverip.Value +' port=5432 user = postgres password=vony'',');
    PStockee.Operation1.SQL.Add('''SELECT periode,jour,tiers,codejrnx, dateesc, eltjrn.* FROM eltjrn JOIN journal ON code=journal'')');
    PStockee.Operation1.SQL.Add('t(periode character varying(10),jour smallint,tiers character varying(10), codejrnx character varying(2),dateesc date,');
    PStockee.Operation1.SQL.Add('numero integer, journal character varying(10), debit character varying(1), compte character varying(20), montant bigint, izy boolean, libelle character varying(60),');
    PStockee.Operation1.SQL.Add('contrepartie character varying(20), nbcontre smallint, qte real, datefact date, numfact character varying(20), colis real, typx character varying(30), sigletaxe character varying(10))');
    Commun.q_exercice_conso.Next;
  end;
  Memo1.Lines := PStockee.Operation1.SQL;
  PStockee.Operation1.ExecSQL;
end;

procedure TFVueConsolide.Creer_BalanceConso;
begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('CREATE VIEW balance_conso AS');
  PStockee.Operation1.SQL.Add('SELECT eltjrn_conso.compte,');
  PStockee.Operation1.SQL.Add('      CASE ');
  PStockee.Operation1.SQL.Add('          WHEN sum(');
  PStockee.Operation1.SQL.Add('          CASE');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('              ELSE - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('         END) >= 0 THEN sum(');
  PStockee.Operation1.SQL.Add('         CASE');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('              ELSE - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('         END)');
  PStockee.Operation1.SQL.Add('          ELSE 0');
  PStockee.Operation1.SQL.Add('     END AS debit,');
  PStockee.Operation1.SQL.Add('      CASE');
  PStockee.Operation1.SQL.Add('         WHEN sum(');
  PStockee.Operation1.SQL.Add('          CASE');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('             ELSE eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('         END) > 0 THEN sum(');
  PStockee.Operation1.SQL.Add('         CASE ');
  PStockee.Operation1.SQL.Add('             WHEN eltjrn_conso.debit = ''D'' THEN - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('              ELSE eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('         END)');
  PStockee.Operation1.SQL.Add('          ELSE 0');
  PStockee.Operation1.SQL.Add('     END AS credit,');
  PStockee.Operation1.SQL.Add('      CASE       ');
  PStockee.Operation1.SQL.Add('          WHEN sum( ');
  PStockee.Operation1.SQL.Add('         CASE          ');
  PStockee.Operation1.SQL.Add('             WHEN eltjrn_conso.debit = ''D'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('              ELSE - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('          END) >= 0 THEN sum(');
  PStockee.Operation1.SQL.Add('         CASE ');
  PStockee.Operation1.SQL.Add('             WHEN eltjrn_conso.debit = ''D'' THEN');
  PStockee.Operation1.SQL.Add('             CASE');
  PStockee.Operation1.SQL.Add('                 WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                 ELSE 0');
  PStockee.Operation1.SQL.Add('             END');
  PStockee.Operation1.SQL.Add('             ELSE -');
  PStockee.Operation1.SQL.Add('              CASE    ');
  PStockee.Operation1.SQL.Add('                 WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                 ELSE 0');
  PStockee.Operation1.SQL.Add('             END          ');
  PStockee.Operation1.SQL.Add('         END)                ');
  PStockee.Operation1.SQL.Add('          ELSE 0');
  PStockee.Operation1.SQL.Add('      END AS debit_210,');
  PStockee.Operation1.SQL.Add('     CASE ');
  PStockee.Operation1.SQL.Add('         WHEN sum( ');
  PStockee.Operation1.SQL.Add('         CASE         ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                 WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('             END           ');
  PStockee.Operation1.SQL.Add('             ELSE - ');
  PStockee.Operation1.SQL.Add('             CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                 ELSE 0');
  PStockee.Operation1.SQL.Add('             END ');
  PStockee.Operation1.SQL.Add('         END) >= 0 THEN sum(');
  PStockee.Operation1.SQL.Add('         CASE');
  PStockee.Operation1.SQL.Add('            WHEN eltjrn_conso.debit = ''D'' THEN');
  PStockee.Operation1.SQL.Add('            CASE');
  PStockee.Operation1.SQL.Add('                WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                ELSE 0');
  PStockee.Operation1.SQL.Add('            END ');
  PStockee.Operation1.SQL.Add('            ELSE - ');
  PStockee.Operation1.SQL.Add('            CASE      ');
  PStockee.Operation1.SQL.Add('                WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                ELSE 0');
  PStockee.Operation1.SQL.Add('            END    ');
  PStockee.Operation1.SQL.Add('         END)   ');
  PStockee.Operation1.SQL.Add('         ELSE 0');
  PStockee.Operation1.SQL.Add('   END AS debit_311,');
  PStockee.Operation1.SQL.Add('   CASE  ');
  PStockee.Operation1.SQL.Add('        WHEN sum( ');
  PStockee.Operation1.SQL.Add('        CASE ');
  PStockee.Operation1.SQL.Add('             WHEN eltjrn_conso.debit = ''D'' THEN -');
  PStockee.Operation1.SQL.Add('            CASE');
  PStockee.Operation1.SQL.Add('                WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                ELSE 0');
  PStockee.Operation1.SQL.Add('             END  ');
  PStockee.Operation1.SQL.Add('            ELSE  ');
  PStockee.Operation1.SQL.Add('             CASE ');
  PStockee.Operation1.SQL.Add('                WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                ELSE 0');
  PStockee.Operation1.SQL.Add('            END ');
  PStockee.Operation1.SQL.Add('       END) > 0 THEN sum( ');
  PStockee.Operation1.SQL.Add('        CASE ');
  PStockee.Operation1.SQL.Add('            WHEN eltjrn_conso.debit = ''D'' THEN - ');
  PStockee.Operation1.SQL.Add('             CASE');
  PStockee.Operation1.SQL.Add('                 WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                 ELSE 0');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('             ELSE ');
  PStockee.Operation1.SQL.Add('             CASE  ');
  PStockee.Operation1.SQL.Add('                WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                 ELSE 0');
  PStockee.Operation1.SQL.Add('             END');
  PStockee.Operation1.SQL.Add('         END)');
  PStockee.Operation1.SQL.Add('         ELSE 0');
  PStockee.Operation1.SQL.Add('      END AS credit_210,');
  PStockee.Operation1.SQL.Add('     CASE ');
  PStockee.Operation1.SQL.Add('         WHEN sum(');
  PStockee.Operation1.SQL.Add('  CASE');
  PStockee.Operation1.SQL.Add('            WHEN eltjrn_conso.debit = ''D'' THEN - ');
  PStockee.Operation1.SQL.Add('             CASE ');
  PStockee.Operation1.SQL.Add('                 WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                 ELSE 0 ');
  PStockee.Operation1.SQL.Add('             END ');
  PStockee.Operation1.SQL.Add('             ELSE ');
  PStockee.Operation1.SQL.Add('             CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('             END ');
  PStockee.Operation1.SQL.Add('        END) > 0 THEN sum( ');
  PStockee.Operation1.SQL.Add('        CASE');
  PStockee.Operation1.SQL.Add('            WHEN eltjrn_conso.debit = ''D'' THEN -');
  PStockee.Operation1.SQL.Add('             CASE');
  PStockee.Operation1.SQL.Add('                 WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                ELSE 0');
  PStockee.Operation1.SQL.Add('            END ');
  PStockee.Operation1.SQL.Add('             ELSE ');
  PStockee.Operation1.SQL.Add('             CASE ');
  PStockee.Operation1.SQL.Add('               WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                ELSE 0');
  PStockee.Operation1.SQL.Add('            END');
  PStockee.Operation1.SQL.Add('         END)');
  PStockee.Operation1.SQL.Add('         ELSE 0 ');
  PStockee.Operation1.SQL.Add('     END AS credit_311');
  PStockee.Operation1.SQL.Add(' FROM eltjrn_conso ');
  PStockee.Operation1.SQL.Add('GROUP BY eltjrn_conso.compte');
  PStockee.Operation1.SQL.Add('ORDER BY eltjrn_conso.compte;');
  //Memo1.Lines := PStockee.Operation1.SQL;
  PStockee.Operation1.ExecSQL;
end;


procedure TFVueConsolide.Creer_BalanceConso_periode;
begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('CREATE VIEW  balance_conso_periode AS');
  PStockee.Operation1.SQL.Add('SELECT eltjrn_conso.compte,');
  PStockee.Operation1.SQL.Add('CASE');
  PStockee.Operation1.SQL.Add('          WHEN sum(');
  PStockee.Operation1.SQL.Add('        CASE');
  PStockee.Operation1.SQL.Add('            WHEN eltjrn_conso.debit = ''D'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('              ELSE - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('          END) >= 0 THEN sum(');
  PStockee.Operation1.SQL.Add('         CASE');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('              ELSE - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('          END)');
  PStockee.Operation1.SQL.Add('          ELSE 0');
  PStockee.Operation1.SQL.Add('      END AS debit, ');
  PStockee.Operation1.SQL.Add('      CASE  ');
  PStockee.Operation1.SQL.Add('          WHEN sum(');
  PStockee.Operation1.SQL.Add('          CASE');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('              ELSE eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('          END) > 0 THEN sum(');
  PStockee.Operation1.SQL.Add('          CASE   ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN - eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('              ELSE eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('          END)');
  PStockee.Operation1.SQL.Add('          ELSE 0 ');
  PStockee.Operation1.SQL.Add('      END AS credit, ');
  PStockee.Operation1.SQL.Add('      CASE ');
  PStockee.Operation1.SQL.Add('          WHEN sum( ');
  PStockee.Operation1.SQL.Add('          CASE ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('              ELSE - eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('          END) >= 0 THEN sum(  ');
  PStockee.Operation1.SQL.Add('          CASE');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN ');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0  ');
  PStockee.Operation1.SQL.Add('              END  ');
  PStockee.Operation1.SQL.Add('              ELSE - ');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('          END)');
  PStockee.Operation1.SQL.Add('         ELSE 0 ');
  PStockee.Operation1.SQL.Add('      END AS debit_210,');
  PStockee.Operation1.SQL.Add('      CASE ');
  PStockee.Operation1.SQL.Add('          WHEN sum(');
  PStockee.Operation1.SQL.Add('          CASE ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN ');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END');
  PStockee.Operation1.SQL.Add('              ELSE - ');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('              END');
  PStockee.Operation1.SQL.Add('          END) >= 0 THEN sum( ');
  PStockee.Operation1.SQL.Add('          CASE ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN ');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('              ELSE - ');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('              END  ');
  PStockee.Operation1.SQL.Add('          END) ');
  PStockee.Operation1.SQL.Add('          ELSE 0  ');
  PStockee.Operation1.SQL.Add('      END AS debit_311,  ');
  PStockee.Operation1.SQL.Add('      CASE');
  PStockee.Operation1.SQL.Add('          WHEN sum( ');
  PStockee.Operation1.SQL.Add('          CASE  ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN - ');
  PStockee.Operation1.SQL.Add('              CASE');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('              ELSE ');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('          END) > 0 THEN sum( ');
  PStockee.Operation1.SQL.Add('          CASE ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN -');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('              ELSE ');
  PStockee.Operation1.SQL.Add('              CASE ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s210'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('              END  ');
  PStockee.Operation1.SQL.Add('          END)');
  PStockee.Operation1.SQL.Add('          ELSE 0  ');
  PStockee.Operation1.SQL.Add('      END AS credit_210,');
  PStockee.Operation1.SQL.Add('      CASE ');
  PStockee.Operation1.SQL.Add('          WHEN sum( ');
  PStockee.Operation1.SQL.Add('          CASE ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN -');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('              ELSE ');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0');
  PStockee.Operation1.SQL.Add('                END   ');
  PStockee.Operation1.SQL.Add('          END) > 0 THEN sum( ');
  PStockee.Operation1.SQL.Add('          CASE   ');
  PStockee.Operation1.SQL.Add('              WHEN eltjrn_conso.debit = ''D'' THEN - ');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant');
  PStockee.Operation1.SQL.Add('                  ELSE 0  ');
  PStockee.Operation1.SQL.Add('              END  ');
  PStockee.Operation1.SQL.Add('              ELSE ');
  PStockee.Operation1.SQL.Add('              CASE  ');
  PStockee.Operation1.SQL.Add('                  WHEN "left"(eltjrn_conso.bdd, 4) = ''s311'' THEN eltjrn_conso.montant ');
  PStockee.Operation1.SQL.Add('                  ELSE 0 ');
  PStockee.Operation1.SQL.Add('              END ');
  PStockee.Operation1.SQL.Add('          END)  ');
  PStockee.Operation1.SQL.Add('          ELSE 0  ');
  PStockee.Operation1.SQL.Add('      END AS credit_311 ');
  PStockee.Operation1.SQL.Add(' FROM eltjrn_conso ');
  PStockee.Operation1.SQL.Add('GROUP BY eltjrn_conso.compte ');
  PStockee.Operation1.SQL.Add('ORDER BY eltjrn_conso.compte; ');
  //Memo1.Lines := PStockee.Operation1.SQL;
  PStockee.Operation1.ExecSQL;
end;

procedure TFVueConsolide.Creer_NumCptConso;
var first:boolean;
begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS numcpt_conso;');
  PStockee.Operation1.SQL.Add('CREATE VIEW numcpt_conso AS');
  first := true;
  Commun.q_exercice_conso.First;
  while not Commun.q_exercice_conso.Eof do
  begin
    if not first then
      PStockee.Operation1.SQL.Add('UNION');
    first := false;
    PStockee.Operation1.SQL.Add('SELECT '''+Copy(Commun.q_exercice_consochemin.Value,1,4)+''' AS bdd,');
    PStockee.Operation1.SQL.Add('numcpt||'''+Copy(Commun.q_exercice_consochemin.Value,1,4)+''' AS compte_ste, *');
    PStockee.Operation1.SQL.Add('FROM dblink(''dbname='+Commun.q_exercice_consochemin.Value+' host='+Special.param_serverip.Value +' port=5432 user = postgres password=vony'',');
    PStockee.Operation1.SQL.Add('''SELECT * FROM numcpt '')');
    PStockee.Operation1.SQL.Add('t( numcpt character varying(20), intitule character varying(100),  detail smallint,');
    PStockee.Operation1.SQL.Add('classe smallint, gclasse smallint, exonere smallint, totalisateur boolean, izy smallint, ggroupe integer,');
    PStockee.Operation1.SQL.Add('ogroupe integer, type_taxe character varying(20), pos_analyt smallint, len_analyt smallint)');
    Commun.q_exercice_conso.Next;
  end;
  //Memo1.Lines := PStockee.Operation1.SQL;
  PStockee.Operation1.ExecSQL;
end;

procedure TFVueConsolide.Creer_NumAdresConso;
var first:boolean;
begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS numadres_conso;');
  PStockee.Operation1.SQL.Add('CREATE VIEW numadres_conso AS');
  first := true;
  Commun.q_exercice_conso.First;
  while not Commun.q_exercice_conso.Eof do
  begin
    if not first then
      PStockee.Operation1.SQL.Add('UNION');
    first := false;
    PStockee.Operation1.SQL.Add('SELECT '''+Copy(Commun.q_exercice_consochemin.Value,1,4)+''' AS bdd,');
    PStockee.Operation1.SQL.Add('numcpt||'''+Copy(Commun.q_exercice_consochemin.Value,1,4)+''' AS compte_ste, *');
    PStockee.Operation1.SQL.Add('FROM dblink(''dbname='+Commun.q_exercice_consochemin.Value+' host='+Special.param_serverip.Value +' port=5432 user = postgres password=vony'',');
    PStockee.Operation1.SQL.Add('''SELECT * FROM numadres '')');
    PStockee.Operation1.SQL.Add('t( numcpt character varying(20), rs character varying(20), nom character varying(50),');
    PStockee.Operation1.SQL.Add('adresse character varying(127),cp character varying(10),  pays character varying(20),');
    PStockee.Operation1.SQL.Add('bp character varying(20), tel character varying(30), fax character varying(20),');
    PStockee.Operation1.SQL.Add('cptbq character varying(50), nii character varying(20), devise character varying(20),');
    PStockee.Operation1.SQL.Add('statut character varying(20))');
    Commun.q_exercice_conso.Next;
  end;
  //Memo1.Lines := PStockee.Operation1.SQL;
  PStockee.Operation1.ExecSQL;
end;

procedure TFVueConsolide.Creer_NumDiverConso;
var first:boolean;
begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('DROP VIEW IF EXISTS numdiver_conso;');
  PStockee.Operation1.SQL.Add('CREATE VIEW numdiver_conso AS');
  first := true;
  Commun.q_exercice_conso.First;
  while not Commun.q_exercice_conso.Eof do
  begin
    if not first then
      PStockee.Operation1.SQL.Add('UNION');
    first := false;
    PStockee.Operation1.SQL.Add('SELECT '''+Copy(Commun.q_exercice_consochemin.Value,1,4)+''' AS bdd,');
    PStockee.Operation1.SQL.Add('numcpt||'''+Copy(Commun.q_exercice_consochemin.Value,1,4)+''' AS compte_ste, *');
    PStockee.Operation1.SQL.Add('FROM dblink(''dbname='+Commun.q_exercice_consochemin.Value+' host='+Special.param_serverip.Value +' port=5432 user = postgres password=vony'',');
    PStockee.Operation1.SQL.Add('''SELECT * FROM numdiver '')');
    PStockee.Operation1.SQL.Add('t( numcpt character varying(20), statistique character varying(20), nif character varying(20),');
    PStockee.Operation1.SQL.Add('tp character varying(20), datetp date, natureprod character varying(40), codeprod character varying(10),');
    PStockee.Operation1.SQL.Add('codedecl character varying(10), abrev character varying(5), uniteprod character varying(10),');
    PStockee.Operation1.SQL.Add('quittance character varying(20), datequit date)');
    Commun.q_exercice_conso.Next;
  end;
  //Memo1.Lines := PStockee.Operation1.SQL;
  PStockee.Operation1.ExecSQL;
end;


end.
