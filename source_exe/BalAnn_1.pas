unit BalAnn_1;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Buttons, DBTables, Mask, ExtCtrls,dialogs;

type
  TFBalAnn_1 = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditCOMPTE: TDBEdit;
    Label2: TLabel;
    EditINTITULE: TDBEdit;
    Label3: TLabel;
    EditDEBIT_: TDBEdit;
    Label4: TLabel;
    EditCREDIT_: TDBEdit;
    DataSource1: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { déclarations privées }
    bm:TBookMark;
  public
    { déclarations publiques }
    procedure Asehoy;
  end;

var
  FBalAnn_1: TFBalAnn_1;

implementation

uses Daspecia;

{$R *.DFM}

procedure TFBalAnn_1.Asehoy;
begin
  Special.BalAnn_1.open;
  Special.BalAnn_1.first;
  Special.BalAnn_1.Edit;
  ShowModal;
end;

procedure TFBalAnn_1.BitBtn1Click(Sender: TObject);
begin
  if DataSource1.State in [dsinsert, dsedit] then
  Special.BalAnn_1.post;
  Special.BalAnn_1.Next;
  Special.BalAnn_1.Edit;
end;

procedure TFBalAnn_1.SpeedButton1Click(Sender: TObject);
begin
  EditCOMPTE.Enabled:=true;
  EditCOMPTE.Color:=clWhite;
  EditINTITULE.Enabled:=true;
  EditINTITULE.Color:=clWhite;
  bm:=Special.BalAnn_1.GetBookmark;
  Special.BalAnn_1.Insert;
end;

procedure TFBalAnn_1.SpeedButton2Click(Sender: TObject);
begin
  EditCOMPTE.Enabled:=false;
  EditCOMPTE.ParentColor:=true;
  EditINTITULE.Enabled:=false;
  EditINTITULE.ParentColor:=true;
  Special.BalAnn_1.Post;
  Special.BalAnn_1.GotoBookmark(bm);
  Special.BalAnn_1.FreeBookmark(bm);
end;

procedure TFBalAnn_1.SpeedButton3Click(Sender: TObject);
begin
  EditCOMPTE.Enabled:=false;
  EditCOMPTE.ParentColor:=true;
  EditINTITULE.Enabled:=false;
  EditINTITULE.ParentColor:=true;
  Special.BalAnn_1.Cancel;
end;


procedure TFBalAnn_1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then Panel1.Visible:=true
  else Panel1.Visible:=false;
end;

procedure TFBalAnn_1.SpeedButton5Click(Sender: TObject);
begin
   if (Special.BalAnn_1debit1.value=0) and
     (Special.BalAnn_1debit2.value=0) and
     (Special.BalAnn_1debit3.value=0) and
     (Special.BalAnn_1debit4.value=0) and
     (Special.BalAnn_1debit5.value=0) and
     (Special.BalAnn_1debit6.value=0) and
     (Special.BalAnn_1debit7.value=0) and
     (Special.BalAnn_1credit1.value=0) and
     (Special.BalAnn_1credit2.value=0) and
     (Special.BalAnn_1credit3.value=0) and
     (Special.BalAnn_1credit4.value=0) and
     (Special.BalAnn_1credit5.value=0) and
     (Special.BalAnn_1credit6.value=0) and
     (Special.BalAnn_1credit7.value=0) and
      (messagedlg(' Voulez-vous supprimer', mtconfirmation,[mbyes,mbno],0)= mryes)
   then  Special.BalAnn_1.delete;
end;

end.
