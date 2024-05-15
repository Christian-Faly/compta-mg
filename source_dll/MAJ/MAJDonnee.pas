unit MAJDonnee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB;

type
  TFMAJDonnee = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Asehoy(Ndf:string);
  end;

var
  FMAJDonnee: TFMAJDonnee;

implementation

uses UObjet;

{$R *.dfm}


procedure TFMAJDonnee.Asehoy(Ndf:string);
begin

  Edit1.Visible:=True;
  Label1.Visible:=True;
  DObjet.T_MAJDonnee.Close;
  DObjet.T_MAJDonnee.TableName:=Ndf;
  DObjet.T_MAJDonnee.Open;
  DObjet.T_MAJDonnee.Insert;
  Edit1.text:='';
  Edit2.text:='';
  Edit2.text:='';
  Label1.Caption:= DObjet.T_MAJDonnee.Fields[0].DisplayName;
  Label2.Caption:= DObjet.T_MAJDonnee.Fields[1].DisplayName;
  if DObjet.T_MAJDonnee.Fields[0].DataType=ftAutoInc then
  begin
    Edit1.Visible:=false;
    Label1.Visible:=false;
  end;
  ShowModal;
end;

procedure TFMAJDonnee.BitBtn1Click(Sender: TObject);
begin
 if DObjet.T_MAJDonnee.Fields[0].DataType<>ftAutoInc then
    DObjet.T_MAJDonnee.Fields[0].AsString:=Edit1.text ;
    DObjet.T_MAJDonnee.Fields[1].AsString:=Edit2.text;
    Close;
end;

procedure TFMAJDonnee.BitBtn2Click(Sender: TObject);
begin
  DObjet.T_MAJDonnee.Cancel;
  Close;
end;

end.
