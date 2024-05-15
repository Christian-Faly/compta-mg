unit SaisiDonnee;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons,db;

type
  TFSaisieDonnee = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
    ListeLabel:array[1..30] of TLabel;
    ListeEdit:array[1..30] of TEdit;
    ListeCheck:array[1..30] of TCheckBox;
  public
    { Déclarations publiques }
    function Asehoy(mode:integer;det:boolean):integer;
  end;

var
  FSaisieDonnee: TFSaisieDonnee;

implementation

uses UObjet;

{$R *.DFM}


function TFSaisieDonnee.Asehoy(mode:integer;det:boolean):integer;
var i:integer;
begin
  case mode of
    0:DObjet.QListDonnee.insert;//showmessage('ajouter');
    1:begin
        for i:=1 to  DObjet.QListDonnee.fields.Count do
        begin
          if DObjet.QListDonnee.fields[i-1].DataType <> ftBoolean then
             Listeedit[i].Text:=DObjet.QListDonnee.fields[i-1].AsString
          else
             ListeCheck[i].Checked:=DObjet.QListDonnee.fields[i-1].AsBoolean;
        end;
        DObjet.QListDonnee.edit;
      end;
  end;
  if det then
  begin
    Listeedit[1].enabled:=false;
    Listeedit[1].Text:=DObjet.Maitre1.Fields[0].AsString;
  end;
  Result:=showmodal;
end;

procedure TFSaisieDonnee.FormCreate(Sender: TObject);
var  i,lef,topy,pasvert,pashori,inithori,initvert: Integer;
begin
  inithori:=100;
  initvert:=25;
  lef:=inithori;
  topy:=initvert;
  pasvert:=25;
  pashori:=200;
  for i:=1 to  DObjet.QListDonnee.fields.Count do
  begin
    case DObjet.QListDonnee.fields[i-1].DataType of
      ftAutoInc:;
      ftboolean:
      begin
        ListeCheck[i]:=TCheckBox.Create(self);
        ListeCheck[i].parent:=Panel1;//PageControl1.Pages[0];
        ListeCheck[i].left:=lef-60;
        ListeCheck[i].top:=topy;
        ListeCheck[i].caption:=DObjet.QListDonnee.fields[i-1].FieldName;
      end;
      else
      begin
        ListeLabel[i]:=TLabel.Create(self);
        ListeLabel[i].parent:=Panel1;//PageControl1.Pages[0];
        ListeLabel[i].left:=lef-60;
        ListeLabel[i].top:=topy;
        ListeLabel[i].caption:=DObjet.QListDonnee.fields[i-1].FieldName;

        Listeedit[i]:=TEdit.Create(self);
        Listeedit[i].parent:=Panel1;//PageControl1.Pages[0];
        Listeedit[i].left:=lef;
        Listeedit[i].top:=topy;
        Listeedit[i].text:='';
      end;
    end;

    topy:=topy+pasvert;
    if i=10 then
    begin
      lef:=lef+pashori;
      topy:=initvert;
    end;
    if i=20 then
    begin
      lef:=lef+pashori;
      topy:=initvert;
    end;
  end;
  width:=lef+200;
  if DObjet.QListDonnee.fields.Count<10 then
    height:=topy+100
  else
    height:=pasvert*11+100;
end;

procedure TFSaisieDonnee.BitBtn1Click(Sender: TObject);
VAR i:integer;
begin
  for i:=1 to  DObjet.QListDonnee.fields.Count do
  begin
    case DObjet.QListDonnee.fields[i-1].DataType of
      ftAutoInc:;
      ftBoolean:DObjet.QListDonnee.fields[i-1].AsBoolean:=ListeCheck[i].Checked;
      else DObjet.QListDonnee.fields[i-1].AsString:=Listeedit[i].Text;
    end;
  end;
  DObjet.QListDonnee.POST;
  modalresult:=mrok;
end;

procedure TFSaisieDonnee.BitBtn2Click(Sender: TObject);
begin
  DObjet.QListDonnee.CANCEL;
  modalresult:=mrcancel;
end;

end.
