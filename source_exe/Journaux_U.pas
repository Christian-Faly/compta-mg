unit Journaux_U;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, ComCtrls, Buttons,
  DBCtrls, Qrctrls, quickrpt, Mask;

type
  TFJournaux = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SourceJournaux: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBText1: TDBText;
    DBNavigator2: TDBNavigator;
    SpeedButton3: TSpeedButton;
    BitBtn2: TBitBtn;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
    NoChange:boolean;
    Et:shortint;
  public
    { Déclarations publiques }
    procedure Asehoy(Etat:shortint);
  end;

var
  FJournaux: TFJournaux;
  MisehoCpt:boolean;

procedure AsehoyJournaux(Etat:shortint);

implementation

uses Daspecia, DaCommun,  ImpPlan, USQL;

{$R *.DFM}

procedure AsehoyJournaux(Etat:shortint);
begin
  try
    FJournaux:= TFJournaux.Create(Application);
    FJournaux.Asehoy(Etat);
  finally
    FJournaux.Free;
  end;
end;

procedure TFJournaux.Asehoy(Etat:shortint);
begin
  Autoscroll:=false;
  Et:=etat;
  case et of
  0:
    begin
      Panel1.visible := True;
    end;
  1:
    begin
      Panel1.visible := False;
    end;
  end;
  SourceJournaux.DataSet:=Special.Journaux;
  NoChange:=false;
  Special.Journaux.open;
  ShowModal;
end;

procedure TFJournaux.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFJournaux.SpeedButton4Click(Sender: TObject);
var k:string;
begin
  AsehoyLstCpt('50',Special.param_serverip.Value, Commun.SocieteChemin.Value ,true,TRUE);
  Commun.Tempon.requery;
  Special.JournauxCompte.Value := Commun.TemponSTRING1.Value ;
end;

end.
