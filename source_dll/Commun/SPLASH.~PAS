unit Splash;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, MPlayer, Buttons;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  public
    procedure Asehoy(charge,logiciel,version,utilisat,FichierImage,copyright:string);
  end;

var
  SplashForm: TSplashForm;

procedure AsehoySplash(charge,logiciel,version,utilisat,FichierImage,copyright:string);export


implementation

{$R *.DFM}

procedure AsehoySplash(charge,logiciel,version,utilisat,FichierImage,copyright:string);
begin
  try
    SplashForm:=TSplashForm.Create(Application);
    SplashForm.Asehoy(charge,logiciel,version,utilisat,FichierImage,copyright);
  finally
    SplashForm.free;
  end;
end;

procedure TSplashForm.Asehoy(charge,logiciel,version,utilisat,FichierImage,copyright:string);
begin
  Label1.caption:=charge;
  Label3.caption:=version;
  Label4.caption:= Logiciel;
  Label5.caption:=Utilisat;
  Label6.caption:=CopyRight;
  Image2.Picture.LoadFromFile(fichierimage);
  show;
end;

procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
  Image1.left:=Image1.Left+10;
  if Image1.left>288 then Image1.left:=0;
  Image1.Update;
end;

procedure TSplashForm.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
