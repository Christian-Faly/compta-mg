unit LstTitre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Buttons, ExtCtrls, Grids, DBGrids, StdCtrls;

type
  TFLstTitre = class(TForm)
    Sourcetitre: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FLstTitre: TFLstTitre;

implementation

uses DaCommun;

{$R *.DFM}

end.
