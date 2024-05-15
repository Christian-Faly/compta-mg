unit USaisiMultiple;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, DB,
  Buttons, ADODB,UObjet;

type
  TListControl=record
    ListeLabel : array[1..25] of TLabel;
    ListeEdit  : array[1..25] of TDBEdit;
    ListeCheck : array[1..25] of TDBCheckBox;
    ListeLookup: array[1..25] of TDBLookupComboBox;
    ListeMemo  : array[1..25] of TDBMemo;
    TabSheet   : array[1..25] of TTabSheet;
    ADOTable   : array[1..25] of TADOTable;
    DataSource : array[1..25] of TDataSource;
    Shape      : array[1..25] of TShape;
  end;
  TFSaisiePrestation = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Shape21: TShape;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Shape11: TShape;
    Shape12: TShape;
    Shape14: TShape;
    DBNavigator2: TDBNavigator;
    DBGrid5: TDBGrid;
    TabSheet3: TTabSheet;
    DataSource1: TDataSource;
    Label2: TLabel;
    DataSource2: TDataSource;
    ADOTable1: TADOTable;
    DBNavigator1: TDBNavigator;
    DataSource3: TDataSource;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    DBNavigator3: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBNavigator3BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
    foc:integer;
    mody:integer;
    Memo5:TMemo;
    function MettreControle(C:TListControl;sur:TWinControl;Q:TADOQuery;Debut:integer):integer;
    function MettreControleFils(C:TListControl;sur:TWinControl;Q:TADOQuery;Debut:integer;
                                 Ent:TEntree;DataSource:TDataSource):integer;
    Procedure CreerLabel(Lab:Tlabel;Caption:String;sur:TWinControl;left,top:integer;Alig:TAlignment);
  public
    { Public declarations }
    CMaitre,CDetail1,CDetail2:TListControl;
    //TAlignment = (taLeftJustify, taRightJustify, taCenter);
    function Asehoy(Mode:integer):integer;
  end;

var
  FSaisiePrestation: TFSaisiePrestation;
  NbEntet:Integer;
  ChDet1,ChDet2:string;

procedure AsehoySaisieMultiple(odbc,Chemin,ndf,chp_Maitre,ndf_Detail1,chp_Detail1,ndf_Detail2,Chp_Detail2:string;
                               Entr,EntrDet1,EntrDet2:TEntree;Mode,NbEntete:integer);

implementation

uses UMoteur;

{$R *.dfm}

procedure AsehoySaisieMultiple(odbc,Chemin,ndf,chp_Maitre,ndf_Detail1,chp_Detail1,ndf_Detail2,Chp_Detail2:string;
                               Entr,EntrDet1,EntrDet2:TEntree;Mode,NbEntete:integer);
var i:integer;
  st:string;
begin
  try
    CreerDObjet;
    CreerMoteur;
    Moteur.IsList:=False;
    Entree:=Entr;
    EntreeDetail1:=EntrDet1;
    EntreeDetail2:=EntrDet2;
    ChDet1:=chp_Detail1;
    ChDet2:=chp_Detail2;
    NbEntet:=NbEntete;
    Moteur.InitMaitreDoubleDetail(odbc,Chemin,ndf,chp_Maitre,ndf_Detail1,chp_Detail1,
                                         ndf_Detail2,Chp_Detail2);
    Moteur.OuvrirQuery(Dobjet.QListDonnee,Entree);
    if ndf_Detail1>'' then
    begin
      DObjet.Detail1.Close;
      DObjet.Detail1.Parameters[0].Value:=DObjet.QListDonnee.Fields[0].Value;
      DObjet.Detail1.Open;
      Moteur.OuvrirQuery(dObjet.detail1,EntreeDetail1);
    end;
    if ndf_Detail2>'' then
    begin
      DObjet.Detail2.Close;
      DObjet.Detail2.Parameters[0].Value:=DObjet.QListDonnee.Fields[0].Value;
      DObjet.Detail2.Open;
      Moteur.OuvrirQuery(dObjet.detail1,EntreeDetail1);
    end;
    DObjet.TListeDonnee.Close;
    DObjet.TListeDonnee.TableName := ndf;
    FSaisiePrestation:=TFSaisiePrestation.Create(Application);
    FSaisiePrestation.Asehoy(Mode);
  finally
    FSaisiePrestation.free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;

function TFSaisiePrestation.Asehoy(Mode:integer):integer;
var i,c_Entree:integer;
begin
  mody:=mode;
  foc:=1;
  c_Entree:=0;
  DataSource1.DataSet := Dobjet.QListDonnee;
  Dobjet.QListDonnee.open;
  case mode of
    0:Dobjet.QListDonnee.insert;
    1:begin
        Dobjet.QListDonnee.edit;
      end;
  end;
  Result:=ShowModal;
end;

Procedure TFSaisiePrestation.CreerLabel(Lab:Tlabel;Caption:String;sur:TWinControl;left,top:integer;Alig:TAlignment);
begin
  Lab:=TLabel.Create(self);
  Lab.parent:=Sur;
  Lab.Alignment:=Alig;
  Lab.left:=left-85;
  Lab.top:=top;
  Lab.AutoSize:=False;
  Lab.Height:=26;
  Lab.Width :=80;
  Lab.WordWrap :=True;
  Lab.caption:=Caption;
end;


function TFSaisiePrestation.MettreControle(C:TListControl;sur:TWinControl;Q:TADOQuery;Debut:integer):integer;
var  i,lef,topy,pasvert,pashori,inithori,initvert,posLeft: Integer;
  Tompony:TWinControl;
begin
  inithori:=100;
  initvert:=5;
  lef:=inithori;
  topy:=initvert;
  pasvert:=25;     // TField
  pashori:=275;
  for i:=1 to  Q.fields.Count do
  begin
      if i<=nbEntet then
        Tompony:= Panel3
      else
        Tompony:= Sur;
    pasvert :=25;
    case Q.fields[i-1].DataType of
        ftAutoInc:;
        ftboolean:
          begin
            C.ListeCheck[debut+i]:=TDBCheckBox.Create(self);
            C.ListeCheck[debut+i].parent:=Tompony;
            C.ListeCheck[debut+i].left:=lef-20;
            C.ListeCheck[debut+i].top:=topy;
            C.ListeCheck[debut+i].caption:=DObjet.Traduire(Q.fields[i-1].FieldName);
            C.ListeCheck[debut+i].DataSource :=DataSource1;
            C.ListeCheck[debut+i].DataField  :=Q.fields[i-1].FieldName;
          end;
        ftTime:;
        ftDateTime,ftDate:
            begin
              CreerLabel(C.ListeLabel[debut+i],DObjet.Traduire(Q.fields[i-1].FieldName),
                         Tompony,lef,topy,taRightJustify);
              C.Listeedit[debut+i]:=TDBEdit.Create(self);
              C.Listeedit[debut+i].parent:=Tompony;
              C.Listeedit[debut+i].left:=lef;
              C.Listeedit[debut+i].top:=topy;
              Q.fields[i-1].EditMask:='!99/99/0000;1;_';
              C.Listeedit[debut+i].width:=4*Q.fields[i-1].DisplayWidth ;
              C.Listeedit[debut+i].DataSource :=DataSource1;
              C.Listeedit[debut+i].DataField  :=Q.fields[i-1].FieldName;
            end;
        ftSmallint, ftInteger,ftWord, ftFloat, ftCurrency,ftBCD,
        ftString,ftWideString:
            begin
              CreerLabel(C.ListeLabel[debut+i],DObjet.Traduire(Q.fields[i-1].FieldName),
                         Tompony,lef,topy,taRightJustify);
              if Entree[debut+i].ndf='' then
              begin
                if Q.fields[i-1].DisplayWidth<50 then
                begin
                  C.Listeedit[debut+i]:=TDBEdit.Create(self);
                  C.Listeedit[debut+i].parent:=Tompony;
                  C.Listeedit[debut+i].left:=lef;
                  C.Listeedit[debut+i].top:=topy;
                  C.Listeedit[debut+i].width:=4*Q.fields[i-1].DisplayWidth ;
                  C.Listeedit[debut+i].DataSource :=DataSource1;
                  C.Listeedit[debut+i].DataField  :=Q.fields[i-1].FieldName;
                  pasvert :=25;
                end
                else
                begin
                  C.ListeMemo[debut+i]:=TDBMemo.Create(Self);
                  C.ListeMemo[debut+i].parent:=Tompony;//PageControl1.Pages[0];
                  C.ListeMemo[debut+i].left:=lef;
                  C.ListeMemo[debut+i].top:=topy;
                  C.ListeMemo[debut+i].width:=200;
                  C.ListeMemo[debut+i].Height:=41;
                  C.ListeMemo[debut+i].DataSource :=DataSource1;
                  C.ListeMemo[debut+i].DataField  :=Q.fields[i-1].FieldName;
                  pasvert :=45;
                end
              end
              else
              begin
                C.ListeLookup[debut+i]:=TDBLookupComboBox.Create(Self);
                C.ListeLookup[debut+i].parent:=Tompony;
                C.ListeLookup[debut+i].left:=lef;
                C.ListeLookup[debut+i].top:=topy;
                C.ListeLookup[debut+i].width:=200 ;
                C.ListeLookup[debut+i].DataSource :=DataSource1;
                C.ListeLookup[debut+i].DataField  :=Q.fields[i-1].FieldName;
                C.ADOTable[debut+i]   :=TADOTable.create(Application);
                C.ADOTable[debut+i].Connection :=DObjet.C_ListeDonnee ;
                C.ADOTable[debut+i].TableName :=Entree[debut+i].ndf;
                C.ADOTable[debut+i].Open;
                C.DataSource[debut+i]   :=TDataSource.create(Application);
                C.DataSource[debut+i].DataSet := C.ADOTable[debut+i];
                C.ListeLookup[debut+i].ListSource :=C.DataSource[debut+i];
                C.ListeLookup[debut+i].ListField  :=C.ADOTable[debut+i].Fields[1].FieldName;
                C.ListeLookup[debut+i].KeyField   :=C.ADOTable[debut+i].Fields[0].FieldName;
              end;
            end;
        ftMemo:
          begin
            C.ListeMemo[debut+i]:=TDBMemo.Create(Self);
            C.ListeMemo[debut+i].parent:=Tompony;//PageControl1.Pages[0];
            C.ListeMemo[debut+i].left:=lef;
            C.ListeMemo[debut+i].top:=topy;
            C.ListeMemo[debut+i].width:=200;
            C.ListeMemo[debut+i].Height:=41;
            C.ListeMemo[debut+i].DataSource :=DataSource1;
            C.ListeMemo[debut+i].DataField  :=Q.fields[i-1].FieldName;
            pasvert :=45;
          end ;
      end;
        topy:=topy+pasvert;
      if i=10 then
      begin
        lef:=lef+pasHori;
        topy:=initvert;
      end;
      if (i=20)or(i<=nbEntet) then
      begin
        lef:=lef+pasHori;
        topy:=initvert;
      end;
      if (i=nbEntet) then
      begin
        lef:=InitHori;
      end;
  end;
end;


function TFSaisiePrestation.MettreControleFils(C:TListControl;sur:TWinControl;Q:TADOQuery;Debut:integer;Ent:TEntree;DataSource:TDataSource):integer;
var  i,lef,topy,pashori,posLeft: Integer;
begin
  lef:=5;
  topy:=5;
  for i:=1 to  Q.fields.Count do
  begin
    if not Ent[debut+i].Visible then
    begin
      Q.fields[i-1].Visible:=False;
      continue;
    end;
    case Q.fields[i-1].DataType of
        ftAutoInc:;
        ftboolean:
          begin
            pashori:=275;
            C.ListeCheck[debut+i]:=TDBCheckBox.Create(self);
            C.ListeCheck[debut+i].parent:=sur;
            C.ListeCheck[debut+i].left:=lef-20;
            C.ListeCheck[debut+i].top:=topy;
            C.ListeCheck[debut+i].caption:=DObjet.Traduire(Q.fields[i-1].FieldName);
            C.ListeCheck[debut+i].DataSource :=DataSource;
            C.ListeCheck[debut+i].DataField  :=Q.fields[i-1].FieldName;
          end;
        ftTime:;
        ftDateTime,ftDate:
            begin
              CreerLabel(C.ListeLabel[debut+i],DObjet.Traduire(Q.fields[i-1].FieldName),
                         sur,lef+85,topy,taLeftJustify);
              C.Listeedit[debut+i]:=TDBEdit.Create(self);
              C.Listeedit[debut+i].parent:=sur;
              C.Listeedit[debut+i].left:=lef;
              C.Listeedit[debut+i].top:=topy+20;
              Q.fields[i-1].EditMask:='!99/99/0000;1;_';
              C.Listeedit[debut+i].width:=4*Q.fields[i-1].DisplayWidth ;
              C.Listeedit[debut+i].DataSource :=DataSource;
              C.Listeedit[debut+i].DataField  :=Q.fields[i-1].FieldName;
              pashori:=4*Q.fields[i-1].DisplayWidth+2;
            end;
        ftSmallint, ftInteger,ftWord, ftFloat, ftCurrency,ftBCD,
        ftString,ftWideString:
            begin
              CreerLabel(C.ListeLabel[debut+i],DObjet.Traduire(Q.fields[i-1].FieldName),
                         sur,lef+85,topy,taLeftJustify);
              if Ent[debut+i].ndf='' then
              begin
                if Q.fields[i-1].DisplayWidth<50 then
                begin
                  C.Listeedit[debut+i]:=TDBEdit.Create(self);
                  C.Listeedit[debut+i].parent:=sur;
                  C.Listeedit[debut+i].left:=lef;
                  C.Listeedit[debut+i].top:=topy+20;
                  C.Listeedit[debut+i].width:=4*Q.fields[i-1].DisplayWidth ;
                  C.Listeedit[debut+i].DataSource :=DataSource;
                  C.Listeedit[debut+i].DataField  :=Q.fields[i-1].FieldName;
                  Q.fields[i-1].DisplayWidth:=C.Listeedit[debut+i].width;
                  pashori:=4*Q.fields[i-1].DisplayWidth+2;
                  C.Shape[debut+i]:=TShape.create(Self);
                  C.Shape[debut+i].parent:=sur;
                  C.Shape[debut+i].left:=lef-1;
                  C.Shape[debut+i].top:=4;
                  C.Shape[debut+i].width:=1 ;
                end
                else
                begin
                  C.ListeMemo[debut+i]:=TDBMemo.Create(Self);
                  C.ListeMemo[debut+i].parent:=sur;//PageControl1.Pages[0];
                  C.ListeMemo[debut+i].left:=lef;
                  C.ListeMemo[debut+i].top:=topy+20;
                  C.ListeMemo[debut+i].width:=200;
                  C.ListeMemo[debut+i].Height:=41;
                  C.ListeMemo[debut+i].DataSource :=DataSource;
                  C.ListeMemo[debut+i].DataField  :=Q.fields[i-1].FieldName;
                  Q.fields[i-1].DisplayWidth:=C.ListeMemo[debut+i].width;
                  C.Shape[debut+i]:=TShape.create(Self);
                  C.Shape[debut+i].parent:=sur;
                  C.Shape[debut+i].left:=lef-1;
                  C.Shape[debut+i].top:=4;
                  C.Shape[debut+i].width:=1 ;
                  pashori:=202;
                end
              end
              else
              begin
                C.ListeLookup[debut+i]:=TDBLookupComboBox.Create(Self);
                C.ListeLookup[debut+i].parent:=sur;
                C.ListeLookup[debut+i].left:=lef;
                C.ListeLookup[debut+i].top:=topy+20;
                C.ListeLookup[debut+i].width:=200 ;
                C.ListeLookup[debut+i].DataSource :=DataSource;
                C.ListeLookup[debut+i].DataField  :=Q.fields[i-1].FieldName;
                C.ADOTable[debut+i]   :=TADOTable.create(Application);
                C.ADOTable[debut+i].Connection :=DObjet.C_ListeDonnee ;
                C.ADOTable[debut+i].TableName :=Ent[debut+i].ndf;
                C.ADOTable[debut+i].Open;
                C.DataSource[debut+i]   :=TDataSource.create(Application);
                C.DataSource[debut+i].DataSet := C.ADOTable[debut+i];
                C.ListeLookup[debut+i].ListSource :=C.DataSource[debut+i];
                C.ListeLookup[debut+i].ListField  :=C.ADOTable[debut+i].Fields[1].FieldName;
                C.ListeLookup[debut+i].KeyField   :=C.ADOTable[debut+i].Fields[0].FieldName;
                Q.fields[i-1].DisplayWidth:=200;
                pashori:=202;
              end;
            end;
        ftMemo:
          begin
            C.ListeMemo[debut+i]:=TDBMemo.Create(Self);
            C.ListeMemo[debut+i].parent:=sur;//PageControl1.Pages[0];
            C.ListeMemo[debut+i].left:=lef;
            C.ListeMemo[debut+i].top:=topy;
            C.ListeMemo[debut+i].width:=200;
            C.ListeMemo[debut+i].Height:=41;
            C.ListeMemo[debut+i].DataSource :=DataSource;
            C.ListeMemo[debut+i].DataField  :=Q.fields[i-1].FieldName;
            C.Shape[debut+i]:=TShape.create(Self);
            C.Shape[debut+i].parent:=sur;
            C.Shape[debut+i].left:=lef-1;
            C.Shape[debut+i].top:=4;
            C.Shape[debut+i].width:=1 ;
            pashori:=202;
          end ;
      end;
      if Q.fields[i-1].DataType<> ftAutoInc then
        lef:=lef+pasHori;
  end;
end;

procedure TFSaisiePrestation.FormCreate(Sender: TObject);
begin
  MettreControle(CMaitre,TabSheet1,Dobjet.QListDonnee,0);
  MettreControleFils(CDetail1,Panel5,DObjet.Detail1,0,EntreeDetail1,DataSource2);
  MettreControleFils(CDetail2,Panel1,DObjet.Detail2,0,EntreeDetail2,DataSource3);
end;

procedure TFSaisiePrestation.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DBNavigator2.DataSource.DataSet.FieldByName(ChDet1).Value:=DObjet.QListDonnee.Fields[0].Value  ;
end;

procedure TFSaisiePrestation.DataSource1DataChange(Sender: TObject;
  Field: TField);
var i:integer;
begin
  //for i:=0 to DObjet.Detail1.SQL.count-1 do
    //showMessage(DObjet.Detail1.SQL[i]);
  //showMessage(DObjet.Q_DonneeListe.Fields[0].Value);
  {DObjet.Detail2.Close;
  DObjet.Detail2.Parameters[0].Value:=DObjet.Q_DonneeListe.Fields[0].Value;
  DObjet.Detail2.Open;}
end;

procedure TFSaisiePrestation.DBNavigator3BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  DBNavigator3.DataSource.DataSet.FieldByName(ChDet2).Value:=DObjet.QListDonnee.Fields[0].Value  ;
end;

end.
