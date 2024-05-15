unit informat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TFInformat = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
    countsec:longint;
    nbsec :longint;
  public
    { Déclarations publiques }
    procedure Asehoy(Capt,text:string;sec:longint);
  end;

var
  FInformat: TFInformat;

procedure AsehoyInformat(Capt,text:string;sec:longint);export;

implementation

{$R *.DFM}

procedure AsehoyInformat(Capt,text:string;sec:longint);
begin
  FInformat:=TFInformat.Create(Application);
  try
    FInformat.Asehoy(Capt,text,sec);
  finally
    FInformat.free;
  end;
end;

procedure TFInformat.Asehoy(Capt,text:string;sec:longint);
begin
  nbsec:=sec;
  countsec:=0;
  Caption:=capt;
  Label1.caption:=text;
  //Timer1.Enabled:=true;
  Show;
end;

procedure TFInformat.Timer1Timer(Sender: TObject);
begin
  countsec:=countsec+1;
  if countsec>nbsec then close;
end;

procedure TFInformat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.enabled:=false;
end;

procedure TFInformat.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.



