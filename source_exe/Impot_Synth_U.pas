unit Impot_Synth_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, DB, comObj,
  ComCtrls;

type
  TFImpotSynth = class(TForm)
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    s_tva_compte: TDataSource;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    UpDown1: TUpDown;
    Edit4: TEdit;
    UpDown2: TUpDown;
    Label8: TLabel;
    Label9: TLabel;
    sq_TVAexcel_NumLigne: TDataSource;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
    procedure Ouvrir;
    function DatePeriode(Daty:TDate):string;
    function MoisPeriode(mois, annee:string):string;
  public
    { Public declarations }
  end;

var
  FImpotSynth: TFImpotSynth;

procedure AsehoyImpotSynth;

implementation

uses Daspecia, DaDeclVao_U, UConnect, EtatDeclare_U;

{$R *.dfm}

procedure AsehoyImpotSynth;
begin
  if FImpotSynth = nil then
    FImpotSynth := TFImpotSynth.Create(Application)
  else
    FImpotSynth.WindowState := wsMaximized;
  FImpotSynth.Ouvrir;
end;

procedure TFImpotSynth.Ouvrir;
begin
end;

procedure TFImpotSynth.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid3.DataSource.DataSet.RecNo mod 2=0 then
  begin
    if Dbgrid3.Canvas.Brush.Color=Dbgrid3.Color then
      Dbgrid3.Canvas.Brush.Color:=$00CCC7FC;
  end;
  DBGrid3.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFImpotSynth.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00A6EBEE;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFImpotSynth.SpeedButton3Click(Sender: TObject);
begin
  DaConnect.SortieExcel(DaDeclVao.q_decl_synth_detail);
end;

procedure TFImpotSynth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FImpotSynth := nil;
end;

procedure TFImpotSynth.SpeedButton6Click(Sender: TObject);
begin
  GroupBox1.Visible := not GroupBox1.Visible;
  if GroupBox1.Visible then
    SpeedButton6.Caption := 'Cacher détail'
  else
    SpeedButton6.Caption := 'Voir détail'
end;

procedure TFImpotSynth.SpeedButton7Click(Sender: TObject);
begin
  GroupBox1.Visible := False;
end;

procedure TFImpotSynth.SpeedButton10Click(Sender: TObject);
begin
  Close;
end;

procedure TFImpotSynth.Edit4Change(Sender: TObject);
begin
  case StrToInt(Edit4.Text) of
     1: Label8.Caption := 'Janvier';
     2: Label8.Caption := 'Février';
     3: Label8.Caption := 'Mars';
     4: Label8.Caption := 'Avril';
     5: Label8.Caption := 'Mai';
     6: Label8.Caption := 'Juin';
     7: Label8.Caption := 'Juillet';
     8: Label8.Caption := 'Août';
     9: Label8.Caption := 'Septembre';
    10: Label8.Caption := 'Octobre';
    11: Label8.Caption := 'Novembre';
    12: Label8.Caption := 'Décembre';
  end;
  MoisPeriode(Edit4.text,Edit3.text);
end;

procedure TFImpotSynth.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DatePeriode(Date);
end;

function TFImpotSynth.DatePeriode(Daty:TDate):string;
var y,m,d:word;
begin
  DecodeDate(daty,y,m,d);
  Edit4.Text := FormatFloat('00',m);
  Edit3.Text := IntToStr(y);
  Label3.Caption := Edit3.Text+'/'+Edit4.Text;
end;

function TFImpotSynth.MoisPeriode(mois,annee:string):string;
begin
  try
    Label3.Caption := annee+'/'+FormatFloat('00', StrToInt(mois));
  except
    Label3.Caption :='';
  end;
end;

procedure TFImpotSynth.SpeedButton8Click(Sender: TObject);
begin
  DaConnect.SortieExcel(DaDeclVao.q_decl_synthetic);
end;
procedure TFImpotSynth.Edit3Change(Sender: TObject);
begin
  MoisPeriode(Edit4.Text,Edit3.Text);
end;

procedure TFImpotSynth.DateTimePicker1Change(Sender: TObject);
begin
  DatePeriode(DateTimePicker1.Date);
end;

procedure TFImpotSynth.SpeedButton1Click(Sender: TObject);
begin
  DaDeclVao.q_decl_synthetic.Close;
  DaDeclVao.q_decl_synthetic.Parameters[0].Value := Label3.Caption;
  DaDeclVao.q_decl_synthetic.Open;
end;

procedure TFImpotSynth.SpeedButton9Click(Sender: TObject);
begin
  AsehoyEtatDeclare(6,0,false,Label3.caption);
end;

end.
