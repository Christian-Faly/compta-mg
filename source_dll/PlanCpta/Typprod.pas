unit Typprod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, ComCtrls, Buttons,
  DBCtrls, Qrctrls, quickrpt;
type
  TForm144 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    SourceJournaux: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    SpeedButton3: TSpeedButton;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    RadioGroup1: TRadioGroup;
    procedure SourceJournauxDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Déclarations privées }
    NoChange, is_saisie:boolean;
    code:string;
    procedure Fafao;
    function  Raiso(Ajout:boolean):boolean;
    procedure Afficheo;
  public
    { Déclarations publiques }
    procedure Asehoy(CodeProd:string;saisie:boolean);
  end;

var
  Form144: TForm144;
  MisehoCpt:boolean;

procedure AsehoyTypProd(codeProd:string;saisie:boolean);export;

implementation

uses DaPlanCp;


{$R *.DFM}

procedure AsehoyTypProd(codeProd:string;saisie:boolean);
begin
  try
    CreerDataCpte;
    Form144:=TForm144.create(Application);
    Form144.Asehoy(codeProd,saisie);
  finally
    Form144.free;
    VonoyDataCpte;
  end;
end;

procedure TForm144.Asehoy(codeProd:string;saisie:boolean);
begin
  is_saisie:=saisie;
  Autoscroll:=false;
  code:=CodeProd;
  DataCpte.SelTypProd.close;
  DataCpte.SelTypProd.SQL.Clear;
  if saisie then
  begin
    DataCpte.SelTypProd.SQL.Add('SELECT *');
    DataCpte.SelTypProd.SQL.Add('FROM TypProd');
    DataCpte.SelTypProd.SQL.Add('WHERE code=:a');
    DataCpte.SelTypProd.SQL.Add('');
    DataCpte.SelTypProd.SQL.Add('ORDER BY nature');
    Panel1.Visible := True;
  end
  else
  begin
    Panel1.Visible := false;
    DataCpte.SelTypProd.SQL.Add('SELECT nature, famille');
    DataCpte.SelTypProd.SQL.Add('FROM TypProd');
    DataCpte.SelTypProd.SQL.Add('WHERE code=:a');
    DataCpte.SelTypProd.SQL.Add('GROUP BY nature, famille ');
    DataCpte.SelTypProd.SQL.Add('ORDER BY nature ');
  end;
  DataCpte.SelTypProd.parameters[0].Value:=CodeProd;
  DataCpte.SelTypProd.open;
  SourceJournaux.DataSet:=DataCpte.SelTypProd;
  NoChange:=false;
  DataCpte.SelTypProd.open;
  ShowModal;
end;

procedure TForm144.Afficheo;
begin
  if NoChange then exit;
  edit1.text:=DataCpte.SelTypProd.FieldValues['Nature'];
  edit2.text:=DataCpte.SelTypProd.FieldValues['Famille'];
  edit3.text:=DataCpte.SelTypProd.FieldValues['Marque'];
  edit4.text:=DataCpte.SelTypProd.FieldValues['Reference'];
  edit5.text:=DataCpte.SelTypProd.FieldValues['UniteX'];
  edit6.text:=DataCpte.SelTypProd.FieldValues['UniteCol'];
end;


function TForm144.Raiso(Ajout:boolean):boolean;
begin
  Result:=false;
  if length(Edit1.text)=0 then
  begin
    Application.MessageBox('Saisie de code obligatoire','Erreur',mb_ok);
    exit;
  end;
  Nochange:=true;
  if ajout then
    DataCpte.SelTypProd.Insert
  else
    DataCpte.SelTypProd.Edit;
  try
    DataCpte.SelTypProd.FieldValues['Code']:=code;
    DataCpte.SelTypProd.FieldValues['Nature']:=edit1.Text;
    DataCpte.SelTypProd.FieldValues['Famille']:=edit2.Text;
    DataCpte.SelTypProd.FieldValues['Marque']:=edit3.Text;
    DataCpte.SelTypProd.FieldValues['Reference']:=edit4.Text;
    DataCpte.SelTypProd.FieldValues['UniteX']:=edit5.Text;
    DataCpte.SelTypProd.FieldValues['UniteCol']:=edit6.Text;
    DataCpte.SelTypProd.Post;
    Result:=true;
  except
    on E:Exception do
    begin
      ShowMessage('Ce code existe déjà '+E.Message);
      DataCpte.SelTypProd.Cancel;
    end;
 end;
 Nochange:=false;
end;

procedure TForm144.Fafao;
begin
  edit2.text:='';
  edit3.text:='';
  edit4.text:='';
  edit1.text:='';
  edit5.text:='';
  edit6.text:='';
end;

procedure TForm144.SourceJournauxDataChange(Sender: TObject; Field: TField);
begin
  if is_saisie then
    Afficheo;
end;

procedure TForm144.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceJournaux.DataSet:=DataCpte.Repos;
end;

procedure TForm144.SpeedButton1Click(Sender: TObject);
begin
  Afficheo;
end;

procedure TForm144.SpeedButton3Click(Sender: TObject);
begin
  DataCpte.Tempon.open;
  DataCpte.Tempon.first;
  DataCpte.Tempon.edit;
  DataCpte.TemponString1.Value:=DataCpte.SelTypProd.FieldValues['Nature'];
  DataCpte.Tempon.post;
  close;
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
  Raiso(true);
  Fafao;
  edit1.setfocus;
end;


procedure TForm144.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=13 then SpeedButton3Click(Sender);
end;

procedure TForm144.SpeedButton4Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer?',mtconfirmation,[mbYes,mbNo],0)=mryes then
     DataCpte.SelTypProd.delete;
end;

procedure TForm144.SpeedButton5Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TForm144.SpeedButton6Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TForm144.BitBtn2Click(Sender: TObject);
begin
  DataCpte.Tempon.open;
  DataCpte.Tempon.Requery;
  DataCpte.Tempon.first;
  DataCpte.Tempon.edit;
  DataCpte.TemponString1.Value:='';
  DataCpte.Tempon.post;
  Close;
end;


procedure TForm144.RadioGroup1Click(Sender: TObject);
begin
  DataCpte.SelTypProd.Close;
  case RadioGroup1.ItemIndex of
    0: DataCpte.SelTypProd.SQL[4]:='ORDER BY nature';
    1: DataCpte.SelTypProd.SQL[4]:='ORDER BY famille';
  end;
  DataCpte.SelTypProd.Open;
end;

end.
