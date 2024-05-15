unit ERecheche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TFERecherche = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ListeLabelMaitre : array[1..30] of TQRLabel;
    ListeEditMaitre  : array[1..30] of TQRDBText;
    ListeLabelDetail : array[1..30] of TQRLabel;
    ListeEditDetail  : array[1..30] of TQRDBText;
    ListeLabelCritere: array[1..30] of TQRLabel;
    ListeEditCritere : array[1..30] of TQRLabel;
    procedure CreerControle;
  public
    { Public declarations }
  end;

var
  FERecherche: TFERecherche;

procedure ImprimerRecherche(NumChampDetail:integer);

implementation

uses UObjet, UM_Recherche;

{$R *.dfm}
var N_ChampDetail:integer;

procedure ImprimerRecherche(NumChampDetail:integer);
begin
  N_ChampDetail:=NumChampDetail;
  try
    Application.CreateForm(TFERecherche, FERecherche);
    FERecherche.QuickRep1.Preview;
  finally
    FERecherche.Free;
  end;
end;

procedure TFERecherche.CreerControle;
var i,nbligne:integer;
  left,top,large, pashori:integer;

begin
  //==========Controle Maitre=================
  pashori:=300;
  for i:=1 to  DObjet.T_TableMaitre.fields.Count do
  begin

    ListeLabelMaitre[i]:=TQRLabel.Create(self);
    ListeLabelMaitre[i].parent:=QRBand1;//PageControl1.Pages[0];
    ListeLabelMaitre[i].left:=pashori*((i-1) div 8);
    //ListeLabel[i].Alignment:=taRightJustify;
    ListeLabelMaitre[i].top:=10+25*((i-1) mod 8);
    ListeLabelMaitre[i].caption:=DObjet.Traduire(DObjet.T_TableMaitre.fields[i-1].FieldName);

    ListeeditMaitre[i]:=TQRDBText.Create(self);
    ListeeditMaitre[i].parent:=QRBand1;//PageControl1.Pages[0];
    ListeeditMaitre[i].left:=120+pashori*((i-1) div 8);
    ListeeditMaitre[i].top:=10+25*((i-1) mod 8);
    ListeeditMaitre[i].width:=5*DObjet.T_TableMaitre.fields[i-1].DisplayWidth ;
    ListeeditMaitre[i].DataSet :=DObjet.Q_TableMaitre;
    ListeeditMaitre[i].DataField:= DObjet.Q_TableMaitre.fields[i-1].fieldName;
    ListeeditMaitre[i].font.Style:=[fsbold];
  end;

    //==========Controle Detail=================
  left:=0;
  top:=2;
  large:=10;
  for i:=1 to  DObjet.T_TableDetail.fields.Count do
  begin
    if i=N_ChampDetail then continue;
    if left>1000 then
    begin
      left:=0;
      QRBand2.Height:=QRBand2.Height+31;
      QRBand3.Height:=QRBand3.Height+31;
      top:=top+31;
    end;

    ListeLabelDetail[i]:=TQRLabel.Create(self);
    ListeLabelDetail[i].parent:=QRBand2;//PageControl1.Pages[0];
    if DObjet.T_TableDetail.fields[i-1].DataType = ftBoolean then
       ListeLabelDetail[i].left:=left+30
    else
       ListeLabelDetail[i].left:=left;
    ListeLabelDetail[i].top:=top;
    ListeLabelDetail[i].caption:=DObjet.Traduire(DObjet.T_TableDetail.fields[i-1].FieldName);
    ListeLabelDetail[i].Font.Style :=[fsbold];
    ListeeditDetail[i]:=TQRDBText.Create(self);
    ListeeditDetail[i].parent:=QRBand3;
    if DObjet.T_TableDetail.fields[i-1].DataType = ftboolean then
    begin
      ListeeditDetail[i].left:=left+30;
      ListeeditDetail[i].width:=30;
    end
    else
    begin
      ListeeditDetail[i].left:=left;
      ListeeditDetail[i].width:=large*DObjet.T_TableDetail.fields[i-1].DisplayWidth ;
    end;

    ListeeditDetail[i].top:=top;
    ListeeditDetail[i].DataSet :=DObjet.Q_TableDetail;
    ListeeditDetail[i].DataField:= DObjet.Q_TableDetail.fields[i-1].fieldName;
    left:=left+large*DObjet.T_TableDetail.fields[i-1].DisplayWidth;
  end;
  QuickRep1.DataSet :=DObjet.Q_TableDetail;
end;

procedure TFERecherche.FormCreate(Sender: TObject);
begin
  CreerControle;
end;

end.
