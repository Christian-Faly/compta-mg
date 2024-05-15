unit UMAJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls,DB, Mask,
  ADODB;

type
  TFMAJ = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    Col: TColumn;
    procedure ChargerCombobox1(s:TDataSource);
  public
    { Public declarations }
    function Asehoy(Source:TDataSource;Titre:string;Ajout,suppression,modification:boolean):integer;
  end;

var
  FMAJ: TFMAJ;

function AsehoyMAJ(Source:TDataSource;Titre:string;Ajout,suppression,modification:boolean):integer;
procedure InsererElement(Source:TDataSource;source_field_name,desti_field_name,Titre:string;dataset:TCustomADODataSet);

implementation


{$R *.dfm}

procedure InsererElement(Source:TDataSource;source_field_name,desti_field_name,Titre:string;dataset:TCustomADODataSet);
begin
   if AsehoyMAJ(Source,'Liste fokontany',True,True,True)=mrOK then
   begin
     if (dataset.State <>dsEdit)and(Source.State <>dsInsert) then
       dataset.Edit;
     dataset.fieldValues[desti_field_name]:=source.dataset.fieldValues[source_field_name];
   end;
end;

function AsehoyMAJ(Source:TDataSource;Titre:string;Ajout,suppression,modification:boolean):integer;
begin
  try
    FMAJ:=TFMAJ.Create(Application);
    Result:=FMAJ.Asehoy(Source,Titre,Ajout,suppression,modification);
  finally
    FMAJ.Free;
  end;
end;

function TFMAJ.Asehoy(Source:TDataSource;Titre:string;Ajout,suppression,modification:boolean):integer;
begin
  Edit1.Text := '';
  DBGrid1.DataSource  := source;
  ChargerCombobox1(Source);
  Label2.Caption:=intToStr(source.DataSet.RecordCount);
  DBNavigator1.DataSource := source;
  DBEdit1.DataSource := source;
  GroupBox1.Caption := Titre;
  if Ajout then
    DBNavigator1.VisibleButtons:= DBNavigator1.VisibleButtons+[nbInsert];
  if suppression then
    DBNavigator1.VisibleButtons:= DBNavigator1.VisibleButtons+[nbDelete];
  if modification then
  begin
    DBNavigator1.VisibleButtons:= DBNavigator1.VisibleButtons+[nbPost,nbCancel];
    DBGrid1.Options:=DBGrid1.Options+[dgEditing];
  end;
  Result:=showModal;
end;

procedure TFMAJ.ChargerCombobox1(s:TDataSource);
var i:integer;
begin
  //Edit2.Visible := False;
  Combobox1.Items.Clear;
  for i:=0 to s.DataSet.FieldCount -1 do
      if s.DataSet.Fields[i].DataType in [ftString, ftMemo,ftWideString] then
          Combobox1.Items.Add(s.DataSet.Fields[i].FieldName);
end;

procedure TFMAJ.DBGrid1DblClick(Sender: TObject);
begin
  if col.Field.DataType=ftBoolean then
  begin
    DBGrid1.DataSource.DataSet.Edit;
    DBGrid1.DataSource.DataSet.FieldByName(col.FieldName).AsBoolean :=not DBGrid1.DataSource.DataSet.FieldByName(col.FieldName).AsBoolean;
    DBGrid1.DataSource.DataSet.Post;
  end;
end;

procedure TFMAJ.DBGrid1CellClick(Column: TColumn);
begin
  col:=Column;
  DBEdit1.DataField := Column.FieldName;
end;

procedure TFMAJ.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    if DBGrid1.DataSource.DataSet.State in [dsInsert,dsEdit] then
      DBGrid1.DataSource.DataSet.Post;
    ModalResult:=mrOK;
  end;
end;

procedure TFMAJ.Edit1Change(Sender: TObject);
begin
  if ComboBox1.Text>'' then
  try
    if Edit1.Text='' then
      DBGrid1.DataSource.DataSet.Filtered := False
    else
    begin
      DBGrid1.DataSource.DataSet.Filtered := True;
      DBGrid1.DataSource.DataSet.Filter := ComboBox1.Text +' Like '+ QuotedStr('*'+Edit1.Text + '*');
    end
  except
  end;
end;

end.
