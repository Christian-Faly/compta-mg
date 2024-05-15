unit Emploi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ExtCtrls, Db, DBTables, Buttons, StdCtrls, ComCtrls, DBGrids;

type
  TFEmploi = class(TForm)
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    UpDown1: TUpDown;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SourceMaterls: TDataSource;
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SourceMaterlsDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
    casy:integer;
    cody:string;
    initial:word;
    procedure Initialiser;
    procedure Occuper(dt1,dt2:TDateTime;ligne:integer;sg:string);
    procedure effacer;
    procedure essai;
    procedure OccupVehicule;
    procedure OccupMateriel(Numero:string);
    procedure OccupEquipage;
    procedure occupeo;
  public
    { Déclarations publiques }
    procedure Asehoy(chem,code:string;cas:integer);
  end;

var
  FEmploi: TFEmploi;

procedure AsehoyEmploi(chem,code:string;cas:integer);export;

implementation

uses Vehicule, DaImmo;

{$R *.DFM}

procedure AsehoyEmploi(chem,code:string;cas:integer);
begin
  try
    CreerDataImmo;
    FEmploi:=TFEmploi.Create(Application);
    FEmploi.Asehoy(chem,code,cas);
  finally
    FEmploi.free;
    VonoyDataImmo;
  end;
end;


procedure TFEmploi.Asehoy(chem,code:string;cas:integer);
begin
  DataImmo.ChangeChemin(chem);
  effacer;
  Initialiser;
  casy:=cas;
  cody:=code;
  if casy=-1 then
  begin
    sourceMaterls.DataSet:=DataImmo.repos;
    DataImmo.Materls.open;
    DataImmo.Materls.first;
    while not  DataImmo.Materls.eof do
    begin
      if inttostr(DataImmo.MaterlsNumero.Value)=cody then break;
      DataImmo.Materls.next;
    end;
    sourceMaterls.DataSet:=DataImmo.Materls;
  end
  else occupeo;
  showmodal;
end;

procedure TFEmploi.occupeo;
begin
  case casy of
    0:{Véhicule}
        OccupVehicule;
    -1:{Matériel}
       OccupMateriel(cody);
    -2:{Equipage}
       OccupEquipage;
  end;
end;

procedure TFEmploi.Initialiser;
var i:integer;
    dt:TDateTime;
    y,m,d:word;
begin
  case casy of
    0:caption:='Véhicule';
    -1:caption:='Matériel-'+cody;
    -2:caption:='Véhicule';
  end;
  dt:=date;
  decodedate(dt,y,m,d);
  initial:=y-50;
  edit1.text:=inttostr(y);
  StringGrid1.ColWidths[0]:=100;
  combobox2.ItemIndex:=m-1;
  StringGrid1.cells[0,0]:='Identification';
  for i:=1 to 31 do
  begin
    StringGrid1.cols[i].clear;
    StringGrid1.cols[i].Add(inttostr(i));
  end;
end;

procedure TFEmploi.effacer;
var i,j:integer;
begin
  for i:=1 to StringGrid1.colcount do
    for j:=1 to StringGrid1.rowcount do
      StringGrid1.Cells[i,j]:='  ';
end;

procedure TFEmploi.essai;
begin
  occuper(date,date+3,1,'oc');
end;

procedure TFEmploi.occuper(dt1,dt2:TDateTime;ligne:integer;sg:string);
var y1,m1,d1:word;
    y2,m2,d2:word;
    i:integer;
begin
  DecodeDate(dt1,y1,m1,d1);
  if strtoint(edit1.text)<y1 then exit;
  if y1<strtoint(edit1.text) then
  begin
    m1:=1;
    d1:=1;
  end;
  if (combobox2.itemindex+1)<m1 then exit;
  if m1<(combobox2.itemindex+1) then d1:=1;
  DecodeDate(dt2,y2,m2,d2);
  if y2<strtoint(edit1.text) then exit;
  if strtoint(edit1.text)<y2 then
  begin
    m2:=12;
    d2:=31;
  end;
  if m2<(combobox2.itemindex+1) then exit;
  if (combobox2.itemindex+1)<m2 then d2:=31;
  if d2<d1 then exit;
  for i:=d1 to d2 do
    StringGrid1.Cells[i,ligne]:=StringGrid1.Cells[i,ligne]+sg;
end;


procedure TFEmploi.OccupVehicule;
var ligne:word;
    textsql:String;
begin
  effacer;
  DBGrid1.visible:=false;
  DataImmo.Vehicule.open;
  StringGrid1.RowCount:=DataImmo.Vehicule.recordcount+1;
  DataImmo.Vehicule.first;
  ligne:=0;
  while not DataImmo.Vehicule.eof do
  begin
    ligne:=ligne+1;
    StringGrid1.cells[0,ligne]:=DataImmo.VehiculeImmatre.value;
    DataImmo.SelEvenmnt.close;
    DataImmo.SelEvenmnt.sql.clear;
    textsql:='select * from ''evenmnt.db'' ';
    textsql:=textsql+'where (Objet=''Véhicule'') ';
    textsql:=textsql+'and (CodeObjet='''+DataImmo.VehiculeImmatre.Value+''') ';
    DataImmo.SelEvenmnt.sql.Add(textsql);
    DataImmo.SelEvenmnt.Open;
    while not DataImmo.SelEvenmnt.eof do
    begin
      occuper(DataImmo.SelEvenmntDaty.Value,
            DataImmo.SelEvenmntDateFin.Value,ligne,
            DataImmo.SelEvenmntSigne.Value);
      DataImmo.SelEvenmnt.next;
    end;
    DataImmo.VoyVehicule.close;
    DataImmo.VoyVehicule.params[0].AsString:=DataImmo.VehiculeImmatre.Value;
    DataImmo.VoyVehicule.open;
    while not DataImmo.VoyVehicule.eof do
    begin
      occuper(DataImmo.VoyVehiculeDaty.Value,
            DataImmo.VoyVehiculeDateFin.Value,ligne,
            DataImmo.VoyVehiculeSigne.Value);
      DataImmo.VoyVehicule.next;
    end;
    DataImmo.Vehicule.next;
  end;
end;

procedure TFEmploi.OccupEquipage;
var ligne:word;
    textsql:String;
begin
  effacer;
  DBGrid1.visible:=false;
  DataImmo.SelEquipage.open;
  StringGrid1.RowCount:=DataImmo.SelEquipage.recordcount+1;
  DataImmo.SelEquipage.first;
  ligne:=0;
  while not DataImmo.SelEquipage.eof do
  begin
    ligne:=ligne+1;
    StringGrid1.cells[0,ligne]:=DataImmo.SelEquipageSurnom.value;
    DataImmo.SelEvenmnt.close;
    DataImmo.SelEvenmnt.sql.clear;
    textsql:='select * from ''evenmnt.db'' ';
    textsql:=textsql+'where (Objet=''Equipage'') ';
    textsql:=textsql+'and (CodeObjet='''+
             inttostr(DataImmo.SelEquipageNumero.Value)+''')';
    DataImmo.SelEvenmnt.sql.Add(textsql);
    DataImmo.SelEvenmnt.Open;
    while not DataImmo.SelEvenmnt.eof do
    begin
      occuper(DataImmo.SelEvenmntDaty.Value,
            DataImmo.SelEvenmntDateFin.Value,ligne,
            DataImmo.SelEvenmntSigne.Value);
      DataImmo.SelEvenmnt.next;
    end;
    DataImmo.VoyEquipage.close;
    DataImmo.VoyEquipage.params[0].AsInteger:=DataImmo.SelEquipageNumero.Value;
    DataImmo.VoyEquipage.open;
    while not DataImmo.VoyEquipage.eof do
    begin
      occuper(DataImmo.VoyEquipageDaty.Value,
            DataImmo.VoyEquipageDateFin.Value,ligne,
            DataImmo.VoyEquipageSigne.Value);
      DataImmo.VoyEquipage.next;
    end;
    DataImmo.SelEquipage.next;
  end;
end;

procedure TFEmploi.OccupMateriel(Numero:string);
var ligne:word;
    textsql:String;
begin
  effacer;
  DBGrid1.visible:=true;
  DataImmo.lstMatls.open;
  StringGrid1.RowCount:=DataImmo.lstMatls.recordcount+1;
  DataImmo.lstMatls.first;
  ligne:=0;
  while not DataImmo.lstMatls.eof do
  begin
    ligne:=ligne+1;
    StringGrid1.cells[0,ligne]:=DataImmo.lstMatlscode.value;
    DataImmo.SelEvenmnt.close;
    DataImmo.SelEvenmnt.sql.clear;
    textsql:='select * from ''evenmnt.db'' ';
    textsql:=textsql+'where (Objet=''Matériel'') ';
    textsql:=textsql+'and (CodeObjet='''+Numero+'-'+DataImmo.lstMatlscode.Value+''') ';
    DataImmo.SelEvenmnt.sql.Add(textsql);
    DataImmo.SelEvenmnt.Open;
    while not DataImmo.SelEvenmnt.eof do
    begin
      {messageDlg('occupeo'+DataImmo.SelEvenmntDaty.AsString+
                  ' à '+DataImmo.SelEvenmntDaty.AsString+
                  ' signe '+DataImmo.SelEvenmntSigne.Value,
                  mtError,[mbok],0);}
      occuper(DataImmo.SelEvenmntDaty.Value,
            DataImmo.SelEvenmntDateFin.Value,ligne,
            DataImmo.SelEvenmntSigne.Value);
      DataImmo.SelEvenmnt.next;
    end;
    DataImmo.lstMatls.next;
  end;
end;

procedure TFEmploi.Panel1Click(Sender: TObject);
begin
  {xwcwxcw}
end;

procedure TFEmploi.SpeedButton1Click(Sender: TObject);
begin
  SourceMaterls.DataSet:=DataImmo.Repos;
  close;
end;

procedure TFEmploi.ComboBox2Change(Sender: TObject);
begin
  effacer;
  occupeo;
end;


procedure TFEmploi.Edit1Change(Sender: TObject);
begin
  effacer;
  occupeo;
end;

procedure TFEmploi.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
 Try
   edit1.text:=inttostr(initial+UpDown1.position);
 except
 end;
end;

procedure TFEmploi.SpeedButton2Click(Sender: TObject);
begin
  OccupVehicule;
end;

procedure TFEmploi.SpeedButton3Click(Sender: TObject);
begin
  casy:=-1;
  DataImmo.Materls.open;
  SourceMaterls.DataSet:=DataImmo.Materls;
  cody:=inttostr(DataImmo.MaterlsNumero.Value);
  OccupMateriel(cody);
end;

procedure TFEmploi.SourceMaterlsDataChange(Sender: TObject; Field: TField);
begin
  if casy=-1 then
  begin
    cody:=inttostr(DataImmo.MaterlsNumero.Value);
    OccupMateriel(cody);
  end;
end;

procedure TFEmploi.SpeedButton5Click(Sender: TObject);
begin
  essai;
end;

procedure TFEmploi.SpeedButton4Click(Sender: TObject);
begin
  OccupEquipage;
end;

end.
