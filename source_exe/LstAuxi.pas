unit LstAuxi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TFLstAuxi = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator: TDBNavigator;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    SourceDansAuxi: TDataSource;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    SpeedButton6: TSpeedButton;
    procedure SourceDansAuxiDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { D�clarations priv�es }
    NoChange:boolean;
    pauxi:^string;
  public
    { D�clarations publiques }
    procedure Asehoy(var auxi:string);
    procedure Raiso(ajout:boolean);
  end;

var
  FLstAuxi: TFLstAuxi;

procedure AsehoyLstAuxi(var auxi:string);

implementation

uses DaCommun, USQL, Daspecia;

{$R *.DFM}

procedure AsehoyLstAuxi(var auxi:string);
begin
  try
    FLstAuxi:= TFLstAuxi.Create(Application);
    FLstAuxi.Asehoy(auxi);
  finally
    FLstAuxi.Free;
  end;
end;

procedure TFLstAuxi.Asehoy(var auxi:string);
begin
  pauxi:=@auxi;
  auxi:='';
  NoChange:=false;
  Special.DansAuxi.open;
  SourceDansAuxi.DataSet:=Special.DansAuxi;
  ShowModal;
end;

procedure TFLstAuxi.Raiso(ajout:boolean);
begin
  NoChange:=true;
  if ajout then Special.DansAuxi.insert else Special.DansAuxi.Edit;
  try
    Special.DansAuxiCompte.Value:=edit1.text;
    Special.DansAuxi.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Ce est d�j� dans la liste','Erreur de saisie',mb_ok);
      Special.DansAuxi.cancel;
    end
  end;
  NoChange:=False;
end;

procedure TFLstAuxi.SourceDansAuxiDataChange(Sender: TObject;
  Field: TField);
begin
  if NoChange then exit;
  edit1.Text:=Special.DansAuxiCompte.Value;
  edit2.Text:=Special.DansAuxiIntitule.Value;
end;

procedure TFLstAuxi.SpeedButton1Click(Sender: TObject);
begin
  edit1.Text:='';
  edit2.Text:='';
end;

procedure TFLstAuxi.SpeedButton2Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFLstAuxi.SpeedButton3Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFLstAuxi.SpeedButton4Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
    Special.DansAuxi.delete;
end;

procedure TFLstAuxi.BitBtn1Click(Sender: TObject);
begin
  close;
end;


procedure TFLstAuxi.BitBtn2Click(Sender: TObject);
begin
  PAuxi^:=Special.DansAuxiCompte.value;
  close;
end;

procedure TFLstAuxi.SpeedButton6Click(Sender: TObject);
var auxi:string;
begin
  auxi:=Special.InAuxiliaire(edit3.text);
  if length(auxi)>0 then showmessage('izy:'+auxi)
  else showmessage('tsy izy');
end;

end.
