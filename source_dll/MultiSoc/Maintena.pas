unit Maintena;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Buttons, Grids, DBGrids, Db, DBTables, StdCtrls, ExtCtrls;

type
  TFMaintenance = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    ListBox1: TListBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure AddListBox1;
    procedure AddListBox2;
  public
    { Déclarations publiques }
    procedure Asehoy1;
    procedure Asehoy2;
  end;

var
  FMaintenance: TFMaintenance;

procedure AsehoyMaintenance;export;
procedure AmboaryMaintenance;
procedure VonoyMaintenance;

implementation

uses Societe;

{$R *.DFM}

procedure AmboaryMaintenance;
begin
  Application.CreateForm(TFMaintenance,FMaintenance);
end;

procedure VonoyMaintenance;
begin
  FMaintenance.Free;
end;

procedure AsehoyMaintenance;
begin
  FMaintenance:=TFMaintenance.Create(Application);
  try
    FMaintenance.Asehoy1;
  finally
    FMaintenance.free;
  end;
end;

procedure TFMaintenance.AddListBox1;
begin
  ListBox1.Items.Clear;
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Societe.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Adresse.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Interloc.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Informa.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Lieu.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Statut.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Utilisat.db');
  ListBox1.Items.Add('c:\Ylaf\Data\Societe\Acces.db');
end;

procedure TFMaintenance.AddListBox2;
begin
  {TListBox }
  ListBox1.Items.Clear;
end;

procedure TFMaintenance.Asehoy1;
begin
  AddListBox1;
  ShowModal;
end;

procedure TFMaintenance.Asehoy2;
begin
  AddListBox2;
  ShowModal;
end;


procedure TFMaintenance.ListBox1Click(Sender: TObject);
begin
  {showmessage(ListBox1.Items.Strings[ListBox1.ItemIndex]);}
  table1.Close;
  table1.TableName:=ListBox1.Items.Strings[ListBox1.ItemIndex];
  table1.open;
end;

procedure TFMaintenance.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
   showmessage('DrawItem');
end;

procedure TFMaintenance.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
