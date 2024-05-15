unit tradu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Buttons;

type
  TFTraduction = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OriginePlan: TTable;
    SpeedButton3: TSpeedButton;
    OriginePlanCOMPTE: TStringField;
    OriginePlanINTITULE: TStringField;
    OriginePlanDEBIT: TFloatField;
    OriginePlanCREDIT: TFloatField;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FTraduction: TFTraduction;

implementation

uses Daspecia, DaCommun;

{$R *.DFM}

procedure TFTraduction.SpeedButton1Click(Sender: TObject);
VAR NumCpt:string;
begin
  Special.NumCp.Open;
  while not Special.NumCp.eof do
  begin
    if (copy(Special.NumCpNumCpt.Value,1,2)<>'40')and
       (copy(Special.NumCpNumCpt.Value,1,2)<>'41')and
       (copy(Special.NumCpNumCpt.Value,1,3)<>'425')and
       (copy(Special.NumCpNumCpt.Value,1,4)<>'4676')and
       (copy(Special.NumCpNumCpt.Value,1,4)<>'4677')and
       (copy(Special.NumCpNumCpt.Value,1,3)<>'461')then
    try
      NumCpt:=Special.NumCpNumCpt.Value;
      Special.NumCp.Edit;
      Special.NumCpNumCpt.Value:=copy(Special.NumCpNumCpt.Value,1,8);
      Special.NumCp.post;
    except
      On EDataBaseError do
      begin
        showmessage('devient double:'+Special.NumCpNumCpt.Value);
        Special.NumCp.cancel;
      end;
    end;
    Special.NumCp.next;
  end;
end;

procedure TFTraduction.SpeedButton2Click(Sender: TObject);
begin
{  NumCpt.open;
  NumCpt.first;
  while not NumCpt.eof do
  begin
    if (copy(NumCptNumCpt.Value,1,2)='40')or
       (copy(NumCptNumCpt.Value,1,2)='41')or
       (copy(NumCptNumCpt.Value,1,3)='425')or
       (copy(NumCptNumCpt.Value,1,4)='4676')or
       (copy(NumCptNumCpt.Value,1,4)='4677')or
       (copy(NumCptNumCpt.Value,1,3)='461')then
    try
      NumCpt.Edit;
      if length(NumCptNumCpt.Value)=8 then
         NumCptNumCpt.Value:=NumCptNumCpt.Value+'00';
      NumCpt.post;
    except
      On EDataBaseError do
      begin
        showmessage('devient double:'+NumCptNumCpt.Value);
        NumCpt.cancel;
      end;
    end;
    NumCpt.next;
  end; }
end;


procedure TFTraduction.SpeedButton3Click(Sender: TObject);
begin
  OriginePlan.Open;
  while not OriginePlan.eof do
  begin
    if (copy(OriginePlanCompte.Value,1,2)<>'40')and
       (copy(OriginePlanCompte.Value,1,2)<>'41')and
       (copy(OriginePlanCompte.Value,1,3)<>'425')and
       (copy(OriginePlanCompte.Value,1,4)<>'4676')and
       (copy(OriginePlanCompte.Value,1,4)<>'4677')and
       (copy(OriginePlanCompte.Value,1,3)<>'461')then
    try
      OriginePlan.Edit;
      OriginePlanCompte.Value:=copy(OriginePlanCompte.Value,1,8);
      OriginePlan.post;
    except
      On EDataBaseError do
      begin
        showmessage('devient double:'+OriginePlanCompte.Value);
        OriginePlan.cancel;
      end;
    end;
    OriginePlan.next;
  end;
end;

procedure TFTraduction.SpeedButton4Click(Sender: TObject);
begin
  Special.ToutEltJrn.Open;
  Special.ToutEltJrn.first;
  while not Special.ToutEltJrn.EOF do
  begin
    if (copy(Special.ToutEltJrnCompte.Value,1,2)<>'40')and
       (copy(Special.ToutEltJrnCompte.Value,1,2)<>'41')and
       (copy(Special.ToutEltJrnCompte.Value,1,3)<>'425')and
       (copy(Special.ToutEltJrnCompte.Value,1,4)<>'4676')and
       (copy(Special.ToutEltJrnCompte.Value,1,4)<>'4677')and
       (copy(Special.ToutEltJrnCompte.Value,1,3)<>'461')then
    begin
      Special.ToutEltJrn.Edit;
      Special.ToutEltJrnCompte.Value:=copy(Special.ToutEltJrnCompte.Value,1,8);
      Special.ToutEltJrn.post;
    end;
    Special.ToutEltJrn.Next;
  end;
end;

procedure TFTraduction.SpeedButton5Click(Sender: TObject);
var mot:string;
  i:integer;
begin
  Special.ToutEltJrn.Open;
  Special.ToutEltJrn.first;
  while not Special.ToutEltJrn.EOF do
  begin
    for i:=1 to length(Special.ToutEltJrnLibelle.Value) do
      if copy(Special.ToutEltJrnLibelle.Value,i,1)='>' then break;
    if i<length(Special.ToutEltJrnLibelle.Value) then
    begin
      mot:='';
      I:=I+1;
{      SHOWMESSAGE(Special.ToutEltJrnLibelle.Value);}
      while copy(Special.ToutEltJrnLibelle.Value,i,1)=' ' do i:=i+1;
 {     SHOWMESSAGE(copy(Special.ToutEltJrnLibelle.Value,i,1));}
      while ((copy(Special.ToutEltJrnLibelle.Value,i,1)>='0')and
             (copy(Special.ToutEltJrnLibelle.Value,i,1)<='9'))or
           (copy(Special.ToutEltJrnLibelle.Value,i,1)='T')do
      begin

        if copy(Special.ToutEltJrnLibelle.Value,i,1)<>'T' then
            mot:=mot+copy(Special.ToutEltJrnLibelle.Value,i,1);
        i:=i+1;
      end;
{      SHOWMESSAGE(mot);break;}
      try
        Special.ToutEltJrn.Edit;
        Special.ToutEltJrnQte.Value:=strtoint(mot);
        Special.ToutEltJrn.post;
      except
      end
    end;
    Special.ToutEltJrn.Next;
  end;
end;


procedure TFTraduction.SpeedButton6Click(Sender: TObject);
var dt:TdateTime;
   d,m,y:word;
begin
  Special.ToutEltJrn.Open;
  Special.ToutEltJrn.first;
  while not Special.ToutEltJrn.EOF do
  begin
    dt:=Special.ToutEltJrnDateFact.Value;
    DecodeDate(dt,y,m,d);
    if y=2099 then
    begin
      dt:=EncodeDate(1999,m,d);
      Special.ToutEltJrn.Edit;
      Special.ToutEltJrnDateFact.Value:=dt;
      Special.ToutEltJrn.post;
    end;
    Special.ToutEltJrn.Next;
  end;
end;

end.
