unit ULog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, Mask, StdCtrls, Grids, DBGrids, ExtCtrls, DB,
  ComCtrls;

type
  TFLogUtil = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    MaskEdit1: TMaskEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox2: TCheckBox;
    DBGrid2: TDBGrid;
    CheckBox3: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Asehoy;
  end;

var
  FLogUtil: TFLogUtil;

procedure AsehoyLogUtil;export;

implementation

uses UObjet;

{$R *.dfm}

procedure AsehoyLogUtil;
begin
  try
    DObjet:= TDObjet.Create(Application);
    FLogUtil:=TFLogUtil.Create(Application);
    FLogUtil.Asehoy;
  finally
    FLogUtil.Free;
    DObjet.Free;
  end;
end;

procedure TFLogUtil.Asehoy;
begin
  DObjet.tTache.Open;
  DObjet.Utilisat.Open;
  DObjet.qAfficheLog.Open;
  DObjet.sqLog.DataSet:= DObjet.qAfficheLog;
  showModal;
end;

procedure TFLogUtil.SpeedButton1Click(Sender: TObject);
var where:string;
begin
  where:='where';
  DObjet.qAfficheLog.close;
  DObjet.qAfficheLog.SQL.Clear;
  DObjet.qAfficheLog.SQL.Add('select * from Log');
  if CheckBox1.Checked then
  begin
    DObjet.qAfficheLog.SQL.Add(where +' (daty=:a)');
    DObjet.qAfficheLog.Parameters[0].Value:=strToDate(MaskEdit1.Text);
    where:='and';
  end;
  if CheckBox2.Checked then
  begin
    DObjet.qAfficheLog.SQL.Add(where +' (CodeUtil='''+DBLookupComboBox1.KeyValue +''')');
    where:='and';
  end;
  DObjet.qAfficheLog.Open;
end;

procedure TFLogUtil.CheckBox1Click(Sender: TObject);
begin
  MaskEdit1.Visible := CheckBox1.Checked ;
end;

procedure TFLogUtil.CheckBox2Click(Sender: TObject);
begin
  DBLookupComboBox1.Visible:= CheckBox2.Checked;
end;

procedure TFLogUtil.CheckBox3Click(Sender: TObject);
begin
  DBLookupComboBox2.Visible:= CheckBox3.Checked;
  DBLookupComboBox3.Visible:= CheckBox3.Checked;

end;

end.
