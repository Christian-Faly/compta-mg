unit PropoEcr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TProposition= record
        Codebanque:string;
        NomBanque:string;
        NumCheque:string;
        NbTraite:integer;
        IntervEchea:string;
        Unitee:smallint;
        Daty:TDateTime;
        ligneParCmpte:boolean;
        MontantG:real;
  end;

  TLigne = record
      DateEsc:TDateTime;
      Libelle:string;
      Qte:real;
      Debit:string;
      Montant:real;
      NumFact:string;
      Compte:string;
    end;

  TLstLigne = array[1..20] of TLigne;

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
    Memo1: TMemo;
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
    ip2:string;
    procedure CalculMontant;
  public
    { Déclarations publiques }
    function Asehoy(ip,cap,lab1,lab2,lab5,NumCptBQ,NumCptTiers:string;intervalle,selec:boolean;glob:real):integer;
  end;

var
  FSelection: TFSelection;

function AsehoySelection(cap,lab1,lab2,lab5,NumCptBQ,NumCptTiers,ip,CodeSoc:string;
          intervalle,selec:boolean;glob:real;var LstLigne:TLstLigne;var proposition:TProposition;
          var nbEcriture:word):boolean;export;

implementation

{$R *.DFM}

uses UDaLettr, ImpPlan, TypeElmt;

function AsehoySelection(cap,lab1,lab2,lab5,NumCptBQ,NumCptTiers,ip,CodeSoc:string;
                    intervalle,selec:boolean;glob:real;var LstLigne:TLstLigne;var Proposition:TProposition;
                    var nbEcriture:word):boolean;
var i:integer;
begin
  Result:=true;
  try
    CreerDataTiers;
    ChangeCheminTiers(ip,codesoc);
    FSelection:=TFSelection.Create(Application);
    if FSelection.Asehoy(ip,cap,lab1,lab2,lab5,NumCptBQ,NumCptTiers,
        intervalle,selec,glob)<>mrOK then
    begin
      result:=False;
      exit;
    end;

    with Proposition do
    begin
      Codebanque:=FSelection.Edit4.Text ;
      NomBanque:=FSelection.Label7.Caption ;
      NumCheque:=FSelection.Edit1.Text;
      Daty:=StrToDate(FSelection.MaskEdit1.Text);
      ligneParCmpte:=FSelection.CheckBox1.Checked;
      if length(EnleveBlanc(FSelection.Edit2.text))>0 then
        NbTraite:=strToInt(FSelection.Edit2.text);
      IntervEchea:=FSelection.Edit3.Text ;
      Unitee:=FSelection.RadioGroup1.ItemIndex;
    end;
    DataTiers.RPropoEcriture.Close;
    DataTiers.RPropoEcriture.SQL.Clear;
    DataTiers.RPropoEcriture.SQL.Add('select * from PropoEcriture');
    DataTiers.RPropoEcriture.SQL.Add('where (compte=:a) and');
    DataTiers.RPropoEcriture.SQL.Add('(lettre=''X'')');
    DataTiers.RPropoEcriture.Parameters[0].Value := NumCptTiers;
    DataTiers.RPropoEcriture.Open;
    i:=1;
    nbEcriture:=DataTiers.RPropoEcriture.RecordCount;
    DataTiers.RPropoEcriture.First;
    while not DataTiers.RPropoEcriture.Eof do
    begin
      with LstLigne[i] do
      begin
        DateEsc:=DataTiers.RPropoEcritureDateFact.Value;
        Libelle:=DataTiers.RPropoEcritureLibelle.Value;
        Qte:=DataTiers.RPropoEcritureQte.Value;
        Debit:=DataTiers.RPropoEcritureDebit.Value;
        Montant:=DataTiers.RPropoEcritureMontant.Value;
        NumFact:=DataTiers.RPropoEcritureNumFact.Value;
        Compte:=DataTiers.RPropoEcritureCompte.Value;
      end;
      i:=i+1;
      DataTiers.RPropoEcriture.Next;
    end;
  finally
    FSelection.Free;
    VonoyDataTiers;
  end;
end;

function TFSelection.Asehoy(ip,cap,lab1,lab2,lab5,NumCptBQ,NumCptTiers:string;intervalle,selec:boolean;glob:real):Integer;
begin
  ip2:=ip;
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
  Edit4.text:=NumCptBQ;
  DataSource1.DataSet:=DataTiers.RPropoEcriture;
  DataTiers.RPropoEcriture.Close;
  DataTiers.RPropoEcriture.Parameters[0].Value:=NumCptTiers ;
  DataTiers.RPropoEcriture.Open;
  DataTiers.lettrage.Open;
  result:=showModal;
end;

procedure TFSelection.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if MontantX=0 then
    Edit5.text:=FormatFloat('#,##0',DataTiers.RPropoEcritureMontant.Value)
  else
    Edit5.text:=FormatFloat('#,##0', ABS(MontantX));
end;

procedure TFSelection.SpeedButton1Click(Sender: TObject);
begin
  if EnleveBlanc(DataTiers.RPropoEcritureLettre.Value)<>'X' then
  begin
  //try
    //showMessage('Insertion:'+DataTiers.RPropoEcritureLettre.Value+'L');
    DataTiers.lettrage.insert;
    DataTiers.lettrageNumElt.Value:=DataTiers.RPropoEcritureNumero.Value;
    DataTiers.lettrageLettre.Value:='X';
    DataTiers.lettrage.post;
    //showMessage('Ins. Terminé');
  {except
    On EDataBaseError do
    begin
      showMessage('Erreur');
      DataTiers.lettrage.cancel;
    end;}
  end
  else
  begin
    DataTiers.SelLettrage.close;
    DataTiers.SelLettrage.parameters[0].Value:='X';
    DataTiers.SelLettrage.open;
    DataTiers.SelLettrage.first;
    while not DataTiers.SelLettrage.eof do
    begin
      if DataTiers.SelLettrageNumElt.Value=DataTiers.RPropoEcritureNumero.Value then
      begin
        DataTiers.SelLettrage.delete;
      end;
      DataTiers.SelLettrage.next;
    end;
  end;
  DataTiers.RPropoEcriture.Requery;
  CalculMontant;
end;

procedure TFSelection.CalculMontant;
begin
  DataTiers.RCalculLettre_X.open;
  DataTiers.RCalculLettre_X.Requery;
  MontantX:=ABS(DataTiers.RCalculLettre_XTotal.Value);
  Edit5.text:=FormatFloat('#,##0', MontantX);
end;

procedure TFSelection.SpeedButton2Click(Sender: TObject);
begin
  AsehoyLstCpt('40',ip2,DataTiers.SocieteChemin.Value ,true,true);
  DataTiers.Tempon.refresh;
  if length(DataTiers.TemponString1.Value)>0 then
    edit4.text:=DataTiers.TemponString1.Value;
end;

procedure TFSelection.Edit4Change(Sender: TObject);
begin
  DataTiers.SelNumCpt.close;
  DataTiers.SelNumCpt.parameters[0].Value:=edit4.text;
  DataTiers.SelNumCpt.open;
  Label7.caption:=DataTiers.SelNumCptIntitule.Value;
end;

procedure TFSelection.BitBtn1Click(Sender: TObject);
begin
  if (global>0) and (Label8.Caption<>EDIT5.text)then
    showMessage('Montant globale différent de montant total')
  else
    ModalResult:=mrOK;
end;

procedure TFSelection.BitBtn2Click(Sender: TObject);
begin
  Label7.caption:='';
  DataTiers.SelLettrage.close;
  DataTiers.SelLettrage.parameters[0].Value:='X';
  DataTiers.SelLettrage.open;
  while not DataTiers.SelLettrage.eof do DataTiers.SelLettrage.delete;
  DataTiers.RPropoEcriture.Requery;
  ModalResult:=mrCancel;
end;

procedure TFSelection.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=32 then SpeedButton1Click(Sender);
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
