unit Lieu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, Buttons, StdCtrls, ExtCtrls, Db, DBTables;

type
  TFLieu = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton6Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    NoChange:boolean;
    mody:shortint;
  public
    { Déclarations publiques }
    procedure Asehoy(mode:shortint);
    procedure Raiso(ajout:boolean);
    procedure Aficheo;
  end;

var
  FLieu: TFLieu;

procedure AsehoyLieu(mode:shortint);export;
procedure AmboaryLieu;
procedure VonoyLieu;

implementation

uses DaPlanCp;


{$R *.DFM}

procedure AmboaryLieu;
begin
  Application.CreateForm(TFLieu, FLieu);
end;

procedure AsehoyLieu (mode:shortint);
begin
  try
    CreerDataCpte;
    FLieu:=TFLieu.Create(Application);
    FLieu.Asehoy(mode);
  finally
    FLieu.Free;
    VonoyDataCpte;
  end;
end;

procedure VonoyLieu;
begin
  FLieu.Free;
end;

procedure TFLieu.Asehoy(mode:shortint);
begin
  NoChange:=false;
  mody:=mode;
  case mode of
  0:begin
      edit1.text:='';
      edit2.text:='';
      Panel3.visible:=false;
      DBGrid1.Visible :=false;
      height:=104;
    end;
  1:begin
    end;
  end;
  showmodal;
end;

procedure TFLieu.Raiso(ajout:boolean);
begin
  Nochange:=true;
  if ajout then DataCpte.Lieu.insert
  else DataCpte.Lieu.edit;
  try
    DataCpte.Lieucode.Value:=edit1.text;
    DataCpte.LieuLieu.Value:=edit2.text;
    DataCpte.Lieu.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Cette code existe déjà','Erreur',mb_ok);
      DataCpte.Lieu.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure  TFLieu.Aficheo;
begin
  if NoChange then exit;
  edit1.text:=DataCpte.Lieucode.Value;
  edit2.text:=DataCpte.LieuLieu.Value;
end;

procedure TFLieu.SpeedButton6Click(Sender: TObject);
begin
  DataCpte.Lieu.cancel;
end;

procedure TFLieu.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Aficheo;
end;


procedure TFLieu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NoChange:=true;
end;

procedure TFLieu.FormCreate(Sender: TObject);
begin
  NoChange:=true;
end;



procedure TFLieu.SpeedButton7Click(Sender: TObject);
begin
  close;
end;

procedure TFLieu.SpeedButton8Click(Sender: TObject);
begin
  case mody of
  0:  Raiso(true);
  1:  ;
  end;
  close;
end;

procedure TFLieu.SpeedButton1Click(Sender: TObject);
begin
  edit1.text:='';
  edit2.text:='';

end;

procedure TFLieu.SpeedButton3Click(Sender: TObject);
begin
  raiso(true);
end;

procedure TFLieu.SpeedButton4Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFLieu.SpeedButton5Click(Sender: TObject);
begin
  try
    DataCpte.Lieu.Delete;
    DataCpte.Lieu.requery;
  except
  end;
end;

end.
