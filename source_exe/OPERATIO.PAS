unit Operatio;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls,  Buttons, MPlayer;

type
  TForm18 = class(TForm)
    MainMenu1: TMainMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-déclarations }
  public
    { Public-déclarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.DFM}


procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Action := caFree;}
end;

end.
