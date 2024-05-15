unit UEtape;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, DB, UObjet,
  StdCtrls;

type

  TFEtape = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    DBNavigator5: TDBNavigator;
    DBGrid5: TDBGrid;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    DBNavigator6: TDBNavigator;
    DBGrid6: TDBGrid;
    TabSheet7: TTabSheet;
    Panel8: TPanel;
    DBNavigator7: TDBNavigator;
    DBGrid7: TDBGrid;
    TabSheet8: TTabSheet;
    Panel9: TPanel;
    DBNavigator8: TDBNavigator;
    DBGrid8: TDBGrid;
    TabSheet9: TTabSheet;
    Panel10: TPanel;
    DBNavigator9: TDBNavigator;
    DBGrid9: TDBGrid;
    TabSheet11: TTabSheet;
    DBGrid11: TDBGrid;
    Panel: TPanel;
    DBNavigator11: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ListeCheck:TListeCheck;
    ListeLabel:TListeLabel;
    ListeEdit:TListeEdit;
    FinMaitre:integer;
    debut,Fin:array[1..10]of integer;
    Panell:Array[1..10] of TPanel;
  public
    { Public declarations }
    procedure Asehoy;
  end;

var
  FEtape: TFEtape;
  EtapeMaitre:TUnEntree;
  EtapeFic:TEntree;
  ListChamps:TListChamps;

procedure AsehoyEtape(odbc,Chemin:string;Maitre:TUnEntree; Fic:TEntree);export;

implementation

uses UMoteur, SaisiDonnee2;


{$R *.dfm}

procedure AsehoyEtape(odbc,Chemin:string;Maitre:TUnEntree; Fic:TEntree);
begin
  try
    EtapeMaitre:=Maitre;
    EtapeFic:=Fic;
    DObjet:=TDObjet.Create(Application);
    DObjet.ChangeConnection(odbc,chemin);
    Moteur:=TMoteur.Create(Application);
    FEtape:=TFEtape.Create(Application);
    FEtape.Asehoy;
  finally
    FSaisieDonnee2.free;
  end;
end;

procedure TFEtape.Asehoy;
begin
  ShowModal;
end;

procedure TFEtape.FormCreate(Sender: TObject);
var i:integer;
begin

  Moteur.FormerListChamps(EtapeMaitre.Ndf,ListChamps);
  FEtape.FinMaitre:=Moteur.CreationControle(EtapeMaitre.Ndf,Panel,1,
                        ListeCheck,ListeLabel,ListeEdit);
  Panell[1]:=Panel1;
  Panell[2]:=Panel1;
  Panell[3]:=Panel1;
  Panell[4]:=Panel1;
  Panell[5]:=Panel1;
  Panell[6]:=Panel1;
  Panell[7]:=Panel1;
  Panell[8]:=Panel1;
  Panell[9]:=Panel1;
  for i:=1 to 9 do
  begin
    if EtapeFic[i].Ndf ='' then break;
    if i=1 then
      Debut[1]:=FEtape.FinMaitre+1
    else
      Debut[i]:=FEtape.Fin[i]+1;
    FEtape.Fin[i]:=Moteur.CreationControle(EtapeFic[i].Ndf,Panell[i],debut[i],
                        ListeCheck,ListeLabel,ListeEdit);
  end;
end;

end.
