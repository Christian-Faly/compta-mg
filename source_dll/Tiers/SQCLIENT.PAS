unit Sqclient;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables;

type
  TFSQClient = class(TForm)
    Panel2: TPanel;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    SpeedButton6: TSpeedButton;
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label2: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton6Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private-déclarations }
    pCode,pNom,pFamille,pVille,pPays:^String;
    porder1,porder2:^integer;
    pokay:^boolean;
    procedure fafao;
  public
    { Public-déclarations }
    procedure Asehoy(var Code,Nom,Famille,Ville,Pays:String;
                     var order1,order2:integer;var okay:boolean);
  end;

var
  FSQClient: TFSQClient;

procedure AsehoySQClient(var Code,Nom,Famille,Ville,Pays:String;
                 var order1,order2:integer;var okay:boolean);

implementation

{$R *.DFM}

procedure AsehoySQClient(var Code,Nom,Famille,Ville,Pays:String;
                 var order1,order2:integer;var okay:boolean);
begin
  try
    FSQClient:=TFSQClient.Create(Application);
    FSQClient.Asehoy(Code,Nom,Famille,Ville,Pays,order1,order2,okay);
  Finally
    FSQClient.Free;
  end;
end;

procedure TFSQClient.Asehoy(var Code,Nom,Famille,Ville,Pays:String;
                         var order1,order2:integer;var okay:boolean);
begin
  pCode:=@code;
  pNom:=@Nom;
  pFamille:=@Famille;
  pVille:=@Ville;
  pPays:=@Pays;
  porder1:=@order1;
  porder2:=@order2;
  pOkay:=@Okay;
  pOkay^:=false;
  fafao;
  showmodal;
end;

procedure TFSQClient.fafao;
begin
  Edit1.text:='';
  Edit2.text:='';
  Edit3.text:='';
  Edit5.text:='';
  Edit8.text:='';
  Edit9.text:='';
  pCode^:='';
  pNom^:='';
  pFamille^:='';
  pVille^:='';
  pPays^:='';
  porder1^:=0;
  porder2^:=0;
  pOkay^:=false;
end;

procedure TFSQClient.SpeedButton6Click(Sender: TObject);
begin
  pCode^:=Edit1.text;
  pNom^:=Edit2.text;
  pFamille^:=Edit3.text;
  pVille^:=Edit8.text;
  pPays^:=Edit9.text;
  pOkay^:=true;
  porder1^:=RadioGroup1.ItemIndex;
  porder2^:=RadioGroup2.ItemIndex;
  close;
end;

procedure TFSQClient.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then RadioGroup2.Visible:=false
  else RadioGroup2.Visible:=True;
end;

procedure TFSQClient.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
