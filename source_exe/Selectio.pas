 unit Selectio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TFSelection = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    Label8: TLabel;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
    montantX:real;
    global:real;
  public
    { Déclarations publiques }
    procedure Asehoy(cap,lab1,lab2,lab5,compte:string;intervalle,selec:boolean;glob:real);
  end;

var
  FSelection: TFSelection;

implementation

uses Daspecia, DaCommun,  ImpPlan, USQL;

procedure TFSelection.Asehoy(cap,lab1,lab2,lab5,compte:string;intervalle,selec:boolean;glob:real);
begin
  Global:=Glob;
  Label8.Caption:=FormatFloat('#,###',Glob);
  if selec then SpeedButton1.Visible:=true
  else SpeedButton1.Visible:=false;
  MontantX:=0;
  MaskEdit1.Text:=FormatDateTime('dd/mm/yyyy',date);
  Caption:=cap;
  if length(lab5)>0 then
  begin
    label5.caption:=lab5;
    label5.Visible:=true;
    edit4.visible:=true;
  end
  else
  begin
    label5.Visible:=false;
    edit4.Visible:=false;
  end;
  if length(lab1)>0 then
  begin
    label1.caption:=lab1;
    label1.Visible:=true;
    edit1.visible:=true;
  end
  else
  begin
    label1.Visible:=false;
    edit1.Visible:=false;
  end;
  if length(lab2)>0 then
  begin
    label2.caption:=lab2;
    label2.Visible:=true;
    MaskEdit1.Visible:=true;
  end
  else
  begin
    label2.Visible:=false;
    MaskEdit1.Visible:=false;
  end;
  if intervalle then
  begin
    Label3.Visible:=true;
    Edit2.Visible:=true;
    RadioGroup1.Visible:=true;
    Label4.Visible:=true;
    Edit3.Visible:=true;
  end
  else
  begin
    Label3.Visible:=false;
    Edit2.Visible:=false;
    RadioGroup1.Visible:=false;
    Label4.Visible:=false;
    Edit3.Visible:=false;
  end;
  Edit1.text:='';
  Edit2.text:='';
  Edit3.text:='';
  Label7.caption:='';
  Edit4.text:=Compte;
  DataSource1.DataSet:=DASQL.SelEltJrn;
end;


{$R *.DFM}

procedure TFSelection.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if MontantX=0 then
    Edit5.text:=FormatFloat('#,##0',DASQL.SelEltJrnMontant.Value)
  else
    Edit5.text:=FormatFloat('#,##0', ABS(MontantX));
end;


procedure TFSelection.SpeedButton1Click(Sender: TObject);
var bm:TBookMark;
begin
  if DASQL.SelEltJrnLettre.Value<>'X' then
  try
    Special.lettrage.insert;
    Special.lettrageNumElt.Value:=DASQL.SelEltJrnNumero.Value;
    Special.lettrageLettre.Value:='X';
    Special.lettrage.post;
  except
    On EDataBaseError do
    begin
      Special.lettrage.cancel;
    end;
  end
  else
  begin
    DASQL.SelLettrage.close;
    DASQL.SelLettrage.parameters[0].Value:='X';
    DASQL.SelLettrage.open;
    DASQL.SelLettrage.first;
    while not DASQL.SelLettrage.eof do
    begin
      if DASQL.SelLettrageNumElt.Value=DASQL.SelEltJrnNumero.Value then
      begin
        DASQL.SelLettrage.delete;
      end;
      DASQL.SelLettrage.next;
    end;
  end;
  DASQL.SelEltJrn.Refresh;
  bm:=DASQL.SelEltJrn.GetBookmark;
  MontantX:=0;
  DASQL.SelEltJrn.first;
  while not DASQL.SelEltJrn.EOF do
  begin
    if DASQL.SelEltJrnLettre.Value='X' then
    begin
      if DASQL.SelEltJrnDebit.Value='D' then
        MontantX:=MontantX+DASQL.SelEltJrnMontant.Value
      else
        MontantX:=MontantX-DASQL.SelEltJrnMontant.Value;
    end;
    DASQL.SelEltJrn.Next;
  end;
  DASQL.SelEltJrn.GotoBookmark(bm);
  DASQL.SelEltJrn.FreeBookmark(bm);
  Edit5.text:=FormatFloat('#,##0', ABS(MontantX));
end;

procedure TFSelection.SpeedButton2Click(Sender: TObject);
begin
  AsehoyLstCpt('40',Commun.SocieteChemin.Value ,true,true);
  Commun.Tempon.refresh;
  if length(Commun.TemponString1.Value)>0 then
    edit4.text:=Commun.TemponString1.Value;
end;

procedure TFSelection.Edit4Change(Sender: TObject);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.parameters[0].Value:=edit4.text;
  DASQL.SelNumCpt.open;
  Label7.caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFSelection.BitBtn1Click(Sender: TObject);
begin
  if (global>0) and (Label8.Caption<>EDIT5.text)then
    showMessage('Montant globale différent de montant total')
  else  CLOSE;
end;

procedure TFSelection.BitBtn2Click(Sender: TObject);
begin
  Label7.caption:='';
  DASQL.SelLettrage.close;
  DASQL.SelLettrage.parameters[0].Value:='X';
  DASQL.SelLettrage.open;
  while not DASQL.SelLettrage.eof do DASQL.SelLettrage.delete;
  DASQL.SelEltJrn.Refresh;
  close;
end;

procedure TFSelection.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=32 then SpeedButton1Click(Sender);
end;

procedure TFSelection.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:BitBtn2Click(Sender);
    13:
      begin
        if MaskEdit1.Visible then MaskEdit1.setfocus
        else if Edit2.Visible then Edit2.setfocus
        else if Edit3.Visible then Edit3.setfocus
        else if RadioGroup1.Visible then RadioGroup1.setfocus
        else if Edit4.Visible then Edit4.setfocus;
      end;
  end;
end;

procedure TFSelection.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:BitBtn2Click(Sender);
    13:
      begin
        if Edit2.Visible then Edit2.setfocus
        else if Edit3.Visible then Edit3.setfocus
        else if RadioGroup1.Visible then RadioGroup1.setfocus
        else if Edit4.Visible then Edit4.setfocus;
      end;
  end;
end;

procedure TFSelection.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:BitBtn2Click(Sender);
    13:
      begin
        if Edit3.Visible then Edit3.setfocus
        else if RadioGroup1.Visible then RadioGroup1.setfocus
        else if Edit4.Visible then Edit4.setfocus;
      end;
  end;
end;

procedure TFSelection.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:BitBtn2Click(Sender);
    13:
      begin
        if Edit4.Visible then Edit4.setfocus;
      end;
  end;
end;

end.
