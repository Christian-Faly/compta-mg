unit UControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TFControl = class(TForm)
    ListBox1: TListBox;
    CreerTable: TADOQuery;
    ListeTable: TADOTable;
    ListeTableNom: TWideStringField;
    ListeTableCleNom: TWideStringField;
    ListeTableCleType: TWideStringField;
    Table: TADOTable;
    Dictionnaire: TADOTable;
    DictionnaireCode: TWideStringField;
    DictionnaireMalagasy: TWideStringField;
    DictionnaireFrancais: TWideStringField;
    DictionnaireAnglais: TWideStringField;
  private
    { Private declarations }
    procedure AmboaryListeTable(odbc,chemin:string);
  public
    { Public declarations }
  end;

var
  FControl: TFControl;


procedure CreerListeTable(odbc,chemin:string);export;

implementation

uses UObjet;

{$R *.dfm}


procedure CreerListeTable(odbc,chemin:string);
begin
  try
    CreerDObjet;
    Application.CreateForm(TFControl, FControl);
    FControl.AmboaryListeTable(odbc,chemin);
  except
    FControl.Free;
    DObjet.Free;
  end;
end;

procedure TFControl.AmboaryListeTable(odbc,chemin:string);
var
    i,j:integer;
    hitaListeTable, hitaCritere, hitaCritereTable,
    hitaCritereType, hitaCritereTypeTable,
    hitaDictionnaire, hitaParametre: boolean;
begin
  DObjet.ChangeConnection(odbc,chemin);
  DObjet.C_ListeDonnee.GetTableNames(ListBox1.Items);
  hitaListeTable:=False;
  hitaCritere:=False;
  hitaCritereTable:=False;
  hitaCritereType:=False;
  hitaCritereTypeTable:=False;
  hitaDictionnaire:=False;
  hitaParametre:=false;

  for i:=0 to ListBox1.Items.Count -1 do
  begin
    if ListBox1.Items[i]='ListeTable' then
       hitaListeTable:=true;
    if ListBox1.Items[i]='Critere' then
       hitaCritere:=true;
    if ListBox1.Items[i]='CritereTable' then
       hitaCritereTable:=true;
    if ListBox1.Items[i]='CritereTypeTable' then
       hitaCritereTypeTable:=true;
    if ListBox1.Items[i]='CritereType' then
       hitaCritereType:=true;
    if ListBox1.Items[i]='Dictionnaire' then
       hitaDictionnaire:=true;
    if ListBox1.Items[i]='Parametre' then
       hitaParametre:=true;
  end;


  if not hitaListeTable then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table ListeTable(Nom char(20),');
      CreerTable.SQL.Add('Primary key(Nom))');
      CreerTable.ExecSQL;
      ListeTable.Open;
      for i:=0 to ListBox1.Items.Count -1 do
      begin
        if (copy(ListBox1.Items[i],1,1)<>'~')and
           (ListBox1.Items[i]<>'Critere')and
           (ListBox1.Items[i]<>'CritereTable')and
           (ListBox1.Items[i]<>'CritereType')and
           (ListBox1.Items[i]<>'CritereTypeTable')and
           (ListBox1.Items[i]<>'Dictionnaire')then
        begin
          ListeTable.Insert;
          ListeTableNom.Value:=ListBox1.Items[i];
          DObjet.T_TableDetail.Close;
          DObjet.T_TableDetail.TableName:=ListBox1.Items[i];
          DObjet.T_TableDetail.Open;
          ListeTableCleNom.Value:=DObjet.T_TableDetail.Fields[0].FieldName;
          case DObjet.T_TableDetail.Fields[0].DataType of
            ftString: ListeTableCleType.Value:='String';
            ftSmallint, ftInteger, ftWord : ListeTableCleType.Value:='Integer';
          end;
          ListeTable.Post;
        end;
      end;
    except
    end
  end;
  if not hitaCritere then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table Critere(');
      CreerTable.SQL.Add('Numero AutoIncrement,');
      CreerTable.SQL.Add('Code_Type char(20),');
      CreerTable.SQL.Add('Libelle char(50),');
      CreerTable.SQL.Add('Primary key(Numero))');
      CreerTable.ExecSQL;
    except
    end
  end;

  if not hitaCritereTable then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table CritereTable(');
      CreerTable.SQL.Add('Numero AutoIncrement,');
      CreerTable.SQL.Add('N_Critere Integer,');
      CreerTable.SQL.Add('NomTable char(20),');
      CreerTable.SQL.Add('CleString char(20),');
      CreerTable.SQL.Add('CleInteger Integer,');
      CreerTable.SQL.Add('Primary key(Numero))');
      CreerTable.ExecSQL;
    except
    end
  end;

  if not hitaCritereType then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table CritereType(');
      CreerTable.SQL.Add('Code Char(20),');
      CreerTable.SQL.Add('Description Char(50),');
      CreerTable.SQL.Add('Primary key(Code))');
      CreerTable.ExecSQL;
    except
    end;
  end;


  if not hitaCritereTypeTable then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table CritereTypeTable(');
      CreerTable.SQL.Add('Numero AutoIncrement,');
      CreerTable.SQL.Add('Code_Type Char(20),');
      CreerTable.SQL.Add('NomTable Char(50),');
      CreerTable.SQL.Add('PossibleValeur SmallInt,');
      CreerTable.SQL.Add('CleType Char(20),');
      CreerTable.SQL.Add('Primary key(Numero))');
      CreerTable.ExecSQL;
    except
    end
  end;

  if not hitaParametre then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table Parametre(');
      CreerTable.SQL.Add('Langue Char(20))');
      CreerTable.ExecSQL;
    except
    end
  end;

  if not hitaDictionnaire then
  begin
    try
      CreerTable.SQL.Clear;
      CreerTable.SQL.Add('Create table Dictionnaire(');
      CreerTable.SQL.Add('Code Char(20),');
      CreerTable.SQL.Add('Malagasy Char(50),');
      CreerTable.SQL.Add('Francais Char(50),');
      CreerTable.SQL.Add('Anglais Char(50),');
      CreerTable.SQL.Add('Primary key(Code))');
      CreerTable.ExecSQL;
      Dictionnaire.Open;
      //showMessage(IntToStr(ListBox1.Items.count));
      for i:=0 to ListBox1.Items.Count -1 do
      begin
        if (copy(ListBox1.Items[i],1,1)<>'~')and
           (ListBox1.Items[i]<>'Critere')and
           (ListBox1.Items[i]<>'CritereTable')and
           (ListBox1.Items[i]<>'CritereType')and
           (ListBox1.Items[i]<>'CritereTypeTable')and
           (ListBox1.Items[i]<>'Dictionnaire')then
        begin
          Table.Close;
          Table.tablename:= ListBox1.Items[i];
          Table.Open;
          for j:=0 to Table.fields.Count - 1 do
          begin
            try
              Dictionnaire.Insert;
              DictionnaireCode.Value := Table.fields[j].fieldName;
              Dictionnaire.Post;
            except
              On EDataBaseError do Dictionnaire.Cancel;
            end;
          end;
        end;
      end;
    except
    end
  end;
  showModal;
end;

end.
