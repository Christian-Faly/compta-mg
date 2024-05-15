unit UAide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, Buttons;

type
  TFAide = class(TForm)
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    s_Q_Aide: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Asehoy(AideSur:string):integer;
  end;

var
  FAide: TFAide;

implementation

uses DaCommun;

{$R *.dfm}

function TFAide.Asehoy(AideSur:string):integer;
begin
  Commun.Q_Aide.close;
  Commun.Q_Aide.Parameters[0].Value:=AideSur;
  Commun.Q_Aide.Open;
  result:=showModal;
end;

end.
