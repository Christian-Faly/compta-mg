unit Saisimpl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, db;

type
  TFSaisimpl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SourceReglemen: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    Procedure Asehoy(Ajout:Boolean);
  end;

var
  FSaisimpl: TFSaisimpl;

implementation

uses DaTiers;


{$R *.DFM}

Procedure TFSaisimpl.Asehoy(Ajout:Boolean);
Begin
  if UpperCase(DataTiers.Saisimp.TableName)=UpperCase('Fam_Cli.db') then Caption:='Saisie Famille Clients';
  if UpperCase(DataTiers.Saisimp.TableName)=UpperCase('Fam_Fou.db') then Caption:='Saisie Famille Fournisseurs';
  if UpperCase(DataTiers.Saisimp.TableName)=UpperCase('Statut.db')  then Caption:='Saisie Statut';
  SourceReglemen.DataSet:=DataTiers.Saisimp;
  if Ajout then DataTiers.Saisimp.Insert
  else  DataTiers.Saisimp.Edit;
  ShowModal;
End;

procedure TFSaisimpl.BitBtn1Click(Sender: TObject);
begin
  Try
    DataTiers.Saisimp.Post;
    Close;
  Except
    On EDataBaseError do
    Begin
      Showmessage('Ce code existe déjà');
      DataTiers.Saisimp.Cancel;
    end;
  End;
end;

procedure TFSaisimpl.BitBtn2Click(Sender: TObject);
begin
  DataTiers.Saisimp.Cancel;
  Close;
end;

end.
