unit URecherche1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls,UObjet, Buttons;

type
  TFRecherche1 = class(TForm)
    ADOTable1: TADOTable;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    RgMaitre:word;
  public
    { Public declarations }
    ListeLabel:array[1..30] of TLabel;
    ListeEdit:array[1..30] of TEdit;
    ListeCheck:array[1..30] of TCheckBox;
    ListeCombo:array[1..30] of TComboBox;
    procedure Asehoy(RangMaitre:word);
  end;

var
  FRecherche1: TFRecherche1;

procedure AsehoyRecherche1(AQ:TADOQuery;E:TEntree;rangMaitre:integer);

implementation

uses  UMoteur;


var QList:TADOQuery;
    Ent:TEntree;


{$R *.DFM}


procedure AsehoyRecherche1(AQ:TADOQuery;E:TEntree;rangMaitre:integer);
begin
  QList:=AQ;
  Ent:=E;
  try
    FRecherche1:=TFRecherche1.Create(Application);
    FRecherche1.Asehoy(RangMaitre);
  finally
    FRecherche1.free;
  end;
end;

procedure TFRecherche1.Asehoy(RangMaitre:word);
begin
  RgMaitre:=RangMaitre;
  showModal;
end;

procedure TFRecherche1.FormCreate(Sender: TObject);
var  i,lef,topy,pasvert,pashori,inithori,initvert: Integer;
begin
  inithori:=100;
  initvert:=50;
  lef:=inithori;
  topy:=initvert;
  pasvert:=25;     // TField
  pashori:=275;
  RadioGroup1.Items.Add('Aucun');
  for i:=1 to  QList.fields.Count do
  begin
    if Ent[i].Recherche then
    begin
      case QList.fields[i-1].DataType of
        ftAutoInc:;
        ftboolean:
        begin
          ListeCheck[i]:=TCheckBox.Create(self);
          ListeCheck[i].parent:=Panel1;//PageControl1.Pages[0];
          ListeCheck[i].left:=lef-60;
          ListeCheck[i].top:=topy;
          ListeCheck[i].caption:=QList.fields[i-1].FieldName;
        end;
        else
        begin
          ListeLabel[i]:=TLabel.Create(self);
          ListeLabel[i].parent:=Panel1;//PageControl1.Pages[0];
          ListeLabel[i].left:=lef-75;
          ListeLabel[i].Alignment:=taRightJustify;
          ListeLabel[i].top:=topy;
          ListeLabel[i].caption:=QList.fields[i-1].FieldName;

          if (Ent[i].Controle='Boite � Liste') then
          begin
            ListeCombo[i]:=TComboBox.Create(self);
            ListeCombo[i].parent:=Panel1;//PageControl1.Pages[0];
            ListeCombo[i].left:=lef;
            ListeCombo[i].top:=topy;
            ListeCombo[i].width:=5*QList.fields[i-1].DisplayWidth ;
            if ListeCombo[i].width>200 then ListeCombo[i].width:=200;
            Moteur.ChargerCombo(Ent[i].ndf,Ent[i].ndc,ListeCombo[i]);
          end
          else
          begin
            Listeedit[i]:=TEdit.Create(self);
            Listeedit[i].parent:=Panel1;//PageControl1.Pages[0];
            Listeedit[i].left:=lef;
            Listeedit[i].top:=topy;
            Listeedit[i].width:=5*QList.fields[i-1].DisplayWidth ;
            if Listeedit[i].width>200 then Listeedit[i].width:=200;
         end;
        end;
      end;

      topy:=topy+pasvert;
      if i=10 then
      begin
        lef:=lef+pasHori;
        topy:=initvert;
      end;
      if i=20 then
      begin
        lef:=lef+pasHori;
        topy:=initvert;
      end;
      RadioGroup1.Items.Add(QList.fields[i-1].FieldName);
    end;
  end;
  RadioGroup1.ItemIndex:=0;
  {Taille de la boite de dialogue}
  width:=lef+200;   //200
  if width<564 then Width:=564;
  if QList.fields.Count<10 then
    height:=topy+100
  else
    height:=pasvert*11+50;
end;

procedure TFRecherche1.SpeedButton1Click(Sender: TObject);
var misy:boolean;
    i:integer;
begin
  misy:=Moteur.InitListDonnee(DObjet.Maitre1,Moteur.Ndf_M1,'','',1, EntreeMaitre1);
  DObjet.Table1.Close;
  DObjet.Table1.TableName:=Moteur.Ndf_M1;
  DObjet.Table1.Open;
  for i:=1 to  DObjet.Table1.Fields.Count do
  begin
    if Ent[i].Recherche then
    begin
      if(Ent[i].Controle='Boite � Liste')and(ListeCombo[i].Text<>'')then
      begin
        if misy then
          DObjet.Maitre1.SQL.Add('and ('+DObjet.Table1.Fields[i-1].FieldName+
                                  '='''+ListeCombo[i].Text+''')')
        else
          DObjet.Maitre1.SQL.Add('where ('+DObjet.Table1.Fields[i-1].FieldName+
                                  '='''+ListeCombo[i].Text+''')');
      end;
      if(Ent[i].Controle<>'Boite � Liste')and(ListeEdit[i].Text<>'')then
      begin
        if misy then
          DObjet.Maitre1.SQL.Add('and ('+DObjet.Table1.Fields[i-1].FieldName+
                                  '='''+ListeEdit[i].Text+''')')
        else
          DObjet.Maitre1.SQL.Add('where ('+DObjet.Table1.Fields[i-1].FieldName+
                                  '='''+ListeEdit[i].Text+''')');
       end;
    end;
  end;
  if RadioGroup1.ItemIndex >0 then
     DObjet.Maitre1.SQL.Add('order by '+RadioGroup1.Items[RadioGroup1.ItemIndex]);
  DObjet.Maitre1.Open;
end;

end.
