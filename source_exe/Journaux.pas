unit Journaux;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, ComCtrls, Buttons,
  DBCtrls, Qrctrls, quickrpt, Mask;

type
  TForm144 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SourceJournaux: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBText1: TDBText;
    DBNavigator2: TDBNavigator;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
    NoChange:boolean;
    Et:shortint;
    procedure initialiser;
  public
    { Déclarations publiques }
    procedure Asehoy(Etat:shortint);
  end;

var
  Form144: TForm144;
  MisehoCpt:boolean;

implementation

uses Daspecia, DaCommun,  ImpPlan, USQL;

{$R *.DFM}

procedure TForm144.Asehoy(Etat:shortint);
begin
  Autoscroll:=false;
  Et:=etat;
  case et of
  0:
    begin
      BitBtn1.visible:=false;
    end;
  1:
    begin
      BitBtn1.visible:=true;
    end;
  end;
  SourceJournaux.DataSet:=Special.Journaux;
  NoChange:=false;
  Special.Journaux.open;
  ShowModal;
end;

procedure TForm144.Initialiser;
begin
  case Et of
    0:begin {Ajout }
      Special.Journaux.Insert;
      Panel1.visible:=true;
      Panel1.Align:=AlClient;
      Panel2.visible:=true;
      Panel3.visible:=false;
      DBGrid1.visible:=false;
    end;
    1:begin {Modification }
      Panel1.visible:=true;
      Panel2.visible:=true;
      Panel3.visible:=false;
      DBGrid1.visible:=false;
    end;
    2:begin {Ajout }
      Panel1.visible:=false;
      Panel2.visible:=false;
      Panel3.visible:=true;
      DBGrid1.visible:=true;
    end;
  end;
end;

procedure TForm144.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm144.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TForm144.FormShow(Sender: TObject);
begin
  Initialiser;
end;

procedure TForm144.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then SpeedButton1Click(Sender);
  if key=13 then BitBtn1Click(Sender);
end;

procedure TForm144.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then SpeedButton1Click(Sender);
  if key=13 then BitBtn1Click(Sender);
end;

procedure TForm144.BitBtn1Click(Sender: TObject);
begin
  if et<>0 then exit;

  Special.Journaux.Requery;
end;


procedure TForm144.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=13 then SpeedButton3Click(Sender); 
end;

procedure TForm144.SpeedButton4Click(Sender: TObject);
var k:string;
begin
  AsehoyLstCpt('50',Special.param_serverip.Value, Commun.SocieteChemin.Value ,true,TRUE);
  Commun.Tempon.requery;
  Special.JournauxCompte.Value := Commun.TemponSTRING1.Value ;
end;

end.
