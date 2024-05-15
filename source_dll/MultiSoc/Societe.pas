unit Societe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, Grids, DBGrids,
  IBCustomDataSet, IBQuery, IBDatabase, DBCtrls, Mask;

type
  TFSociete = class(TForm)
    DataSociete: TDataSource;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    PageControl2: TPageControl;
    Raison: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    Label13: TLabel;
    Label18: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    GroupBox1: TGroupBox;
    Label32: TLabel;
    Label35: TLabel;
    Label27: TLabel;
    TabSheet2: TTabSheet;
    Label24: TLabel;
    BP: TLabel;
    Label6: TLabel;
    Label26: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    TabSheet4: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label11: TLabel;
    Ouvrir: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet5: TTabSheet;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Label19: TLabel;
    Label28: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Ville: TLabel;
    Label25: TLabel;
    DBGrid2: TDBGrid;
    SourceLieu: TDataSource;
    Label10: TLabel;
    Panel1: TPanel;
    Edit38: TEdit;
    Label55: TLabel;
    SpeedButton8: TSpeedButton;
    Label59: TLabel;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label37: TLabel;
    Label47: TLabel;
    Label12: TLabel;
    Label36: TLabel;
    Label56: TLabel;
    SpeedButton10: TSpeedButton;
    DBNavigator1: TDBNavigator;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel2: TPanel;
    SpeedButton11: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid4: TDBGrid;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label62: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label54: TLabel;
    SpeedButton14: TSpeedButton;
    Label57: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    ComboBox1: TComboBox;
    RadioGroup1: TRadioGroup;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Panel5: TPanel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBEdit50: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataSocieteDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Edit36Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Déclarations privées }
    NoChange   : Boolean;
    mody       : shortint;
    trans,logic: string;
    orig:string;
    procedure Selectionner(st:string);
    function  ChercherType(DataType:TFieldType;var CharVe:boolean):string;
    procedure ListerSociete(logiciel,filtre:string);
    procedure AfficherText(CB:TComboBox;text:string);
  public
    { Déclarations publiques }
    function Asehoy(mode:shortint;transf,logiciel,Origine,Filtre:string;Commerciale:boolean):integer;
  end;


  const Repertoire=0;
        BaseDeDonnees=1;
        CNouveau=0;
        COuvrir=1;
  var
    FSociete    : TFSociete;
    CheminAcces : string;
    Commerce:boolean;

function AsehoySociete(Mode:ShortInt;Transf,Logiciel,Origine,Filtre:string;Commerciale:boolean):integer;export;
procedure AmboarySociete;
procedure VonoySociete;

implementation

uses UObjet, Lieu, STATUT, DBLogDlg, TypeElmt,IdGlobal, ImpMAJ1;

{$R *.DFM}

procedure AmboarySociete;
begin
  Application.CreateForm(TFSociete,FSociete);
end;

procedure VonoySociete;
begin
  FSociete.free;
end;

function AsehoySociete(mode:ShortInt;transf,logiciel,Origine,Filtre:string;Commerciale:boolean):integer;
begin
  CreerDObjet;
  If not ChargerMAJ1 then exit;
  FSociete := TFSociete.Create(Application);
  try
    Result:=FSociete.Asehoy(mode,transf,logiciel,Origine,filtre,commerciale);
  finally
    FSociete.free;
    VonoyDObjet;
  end;
end;

procedure TFSociete.AfficherText(CB:TComboBox;text:string);
var i,index:integer;
   hita:boolean;
begin
  hita:=false;
  for i:=0 to CB.Items.Count-1 do
  begin
    //showMessage(CB.Items[i]+'='+text);
    if CB.Items[i]=text then
    begin

       hita:=true;
       break;
    end;
  end;
  if hita then index:=i
  else index:=-1;
  CB.ItemIndex:=index;
end;

function TFSociete.ChercherType(DataType:TFieldType;var CharVe:boolean):string;
var TypeChamps:string;
begin
  CharVe:=false;
  TypeChamps:='CHAR(50)';
  case DataType of
    ftUnknown     : ;
    ftString      : begin TypeChamps:='CHAR';CharVe:=True;end;
    ftSmallint    : TypeChamps:='Smallint';
    ftInteger     : TypeChamps:='INTEGER';
    ftWord        : TypeChamps:='Smallint';
    ftBoolean     : TypeChamps:='Smallint';
    ftFloat       : TypeChamps:='Float';
    ftCurrency    : TypeChamps:='Currency';
    ftBCD         : ;
    ftDate        : TypeChamps:='Date';
    ftTime        : TypeChamps:='Time';
    ftDateTime    : TypeChamps:='DateTime';
    ftBytes       : ;
    ftVarBytes    : ;
    ftAutoInc     : TypeChamps:='AutoInc';
    ftBlob        : ;
    ftMemo        : ;
    ftGraphic     : ;
    ftFmtMemo     : ;
    ftParadoxOle  : ;
    ftDBaseOle    : ;
    ftTypedBinary : ;
    ftCursor      : ;
    ftFixedChar   : ;
    ftWideString  : ;
    ftLargeint    : ;
    ftADT         : ;
    ftArray       : ;
    ftReference   : ;
    ftDataSet     : ;
    ftOraBlob     : ;
    ftOraClob     : ;
    ftVariant     : ;
    ftInterface   : ;
    ftIDispatch   : ;
    ftGuid        : ;
    ftTimeStamp   : ;
    ftFMTBcd      : ;
  end;
  result:= TypeChamps;
end;


function TFSociete.Asehoy(mode:ShortInt;Transf,logiciel,Origine,Filtre:string;Commerciale:Boolean):integer;
begin
  if not Commerciale then
    TabSheet1.TabVisible:=false;
  DObjet.Tempon.open;
  Edit38.Text:='';
  Orig:=Origine;
  logic:=logiciel;
  ListerSociete(logiciel,filtre);
  mody:=mode;
  trans:=transf;
  NoChange:=false;
  DObjet.t_Consolide.Open;
  DObjet.t_Societe.Open;
  DObjet.Statut.open;

  DObjet.q_Societe.close;
  DObjet.q_Societe.parameters[0].Value := logiciel ;
  DObjet.q_Societe.open;

  case mode of
  0: {Nouveau}
    begin
      try
       SpeedButton5.Visible :=False;
      DObjet.Societe.Insert;
      PageControl2.ActivePage:=Raison;
      BitBtn3.Caption:='Terminer';
      BitBtn3.Visible:=true;
      DBGrid1.visible:=false;
      except
        On E:Exception do
          showMessage(E.Message );
      end;
    end;
  1: {Ouvrir}
    begin
       SpeedButton5.Visible :=True;
      PageControl2.ActivePage:=Ouvrir;
      BitBtn3.Caption:='Ouvrir';
      BitBtn3.Visible:=true;
      DBGrid1.visible:=true;
      DObjet.Societe.open;
    end;
  end;
  Result:=ShowModal;
end;

procedure TFSociete.Selectionner(st:string);
begin
  DObjet.SelAdresse.Close;
  DObjet.SelAdresse.parameters[0].Value:=st;
  DObjet.SelAdresse.open;
  DObjet.SelInterloc.Close;
  DObjet.SelInterloc.parameters[0].Value:=st;
  DObjet.SelInterloc.open;
end;

procedure TFSociete.SpeedButton1Click(Sender: TObject);
begin
  PageControl2.SelectNextPage(true);
end;

procedure TFSociete.SpeedButton2Click(Sender: TObject);
begin
  PageControl2.SelectNextPage(false);
end;

procedure TFSociete.SpeedButton4Click(Sender: TObject);
begin
    OpenDialog1.InitialDir:=extractFilePath(DObjet.SocieteChemin.Value);
    OpenDialog1.FileName:=extractFileName(DObjet.SocieteChemin.Value);
    case DBComboBox1.ItemIndex of
      0://Type paradox
        OpenDialog1.Filter:='Paradox|*.db';
      1://Type Access
        OpenDialog1.Filter:='Microsoft Access|*.mdb';
      2://TYpe Interbase
        OpenDialog1.Filter:='Interbase|*.gdb';
    end;
    if OpenDialog1.Execute then
    begin
      if (DObjet.Societe.State <>dsEdit)and(DObjet.Societe.State <>dsEdit)then
         DObjet.Societe.Edit;
      DObjet.SocieteChemin.Value:=OpenDialog1.FileName;
    end
end;

procedure TFSociete.DataSocieteDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  Selectionner(DObjet.SocieteCode.Value);
end;

procedure TFSociete.BitBtn1Click(Sender: TObject);
begin
  if (DObjet.SelAdresse.State =dsEdit)or(DObjet.SelAdresse.State =dsInsert) then
    DObjet.SelAdresse.Post;
  if (DObjet.SelInterloc.State =dsEdit)or(DObjet.SelInterloc.State =dsInsert) then
    DObjet.SelInterloc.Post;
  if (DObjet.Societe.State =dsEdit)or(DObjet.Societe.State =dsInsert) then
    DObjet.Societe.Post;
  DObjet.Tempon.first;
  //if DObjet.TemponString2.Value<>DObjet.SocieteChemin.Value then
  //begin
  showMessage('1');
    DObjet.Tempon.edit;
    DObjet.TemponString1.Value:=DObjet.SocieteCode.Value;
    DObjet.TemponString2.Value:=DObjet.SocieteChemin.Value;
    DObjet.TemponString3.Value:=DObjet.SocieteRegistre.Value;
    DObjet.Tempon.post;
  showMessage('2');
  //end;
  ModalResult:=mrOK;
end;

procedure TFSociete.SpeedButton9Click(Sender: TObject);
begin
  DObjet.Tempon.open;
  DObjet.Tempon.first;
  DObjet.Tempon.edit;
  DObjet.TemponString1.Value:='';
  DObjet.TemponString2.Value:='';
  DObjet.Tempon.post;
  close;
end;

procedure TFSociete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NoChange:=true;
end;

procedure TFSociete.FormCreate(Sender: TObject);
begin
  NoChange:=true;
end;

procedure TFSociete.SpeedButton6Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraimement supprimer ?',mtConfirmation,
    [mbYes,mbNo],0)=mryes then DObjet.Societe.delete;
end;


procedure TFSociete.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn1Click(Sender);
  if key=27 then SpeedButton9Click(Sender);
end;

procedure TFSociete.BitBtn2Click(Sender: TObject);
begin
  Panel4.Visible:= not Panel4.Visible;
end;

procedure TFSociete.DBGrid2CellClick(Column: TColumn);
begin
  DBGrid2.Visible:=false;
end;

procedure TFSociete.Edit36Click(Sender: TObject);
begin
  DBGrid2.Visible:=true;
  DBGrid2.Setfocus;
  DObjet.Lieu.Open;
  DObjet.Lieu.reQUERY;
end;

procedure TFSociete.SpeedButton8Click(Sender: TObject);
var param1:string;
begin
  param1:=DObjet.Societe.Parameters[0].Value;
  ListerSociete(param1,Edit38.text);
end;

procedure TFSociete.ListerSociete(logiciel,filtre:string);
begin
  try
    DObjet.Societe.Close;
    DObjet.Societe.SQL.Clear;
    DObjet.Societe.SQL.Add('select * from Societe');
    DObjet.Societe.SQL.Add('where (logiciel=:a)');
    if length(filtre)>0 then
      DObjet.Societe.SQL.Add('and (filtre='''+ filtre+''')');
    DObjet.Societe.Parameters[0].Value:=Logiciel;
    DObjet.Societe.SQL.Add('order by code');
    DObjet.Societe.Open;
  except
    On E:EDataBaseError do
      showMessage(E.Message);
  end;
end;

procedure TFSociete.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i:integer;
begin
  //showMessage(Inttostr(key));
  for i:=1 to 30 do
  begin
     with Entree[i] do
     begin
      Ndf:='';
      Critere:='';
      Ndc:='';
      Valeur:='';
      Controle:='';
      Visible:=True;
      Recherche:=False;
    end;
  end;
  case key of
    107://Ajout
      begin
        AsehoySaisieDonnee2('Societe','','Lieu',Entree,0);
        DObjet.Lieu.requery;
      end;
    109://Suppression
        if MessageDlg('Voulez vous vraiement supprimer?',mtConfirmation,[mbYes,mbNo],1)=mrYes then
          DObjet.Lieu.Delete;
  end;
end;

procedure TFSociete.SpeedButton10Click(Sender: TObject);
begin
  if length(DObjet.SocieteCheminPrec.Value)>0 then
  begin
    OpenDialog1.InitialDir:=extractFilePath(DObjet.SocieteCheminPrec.Value);
    OpenDialog1.FileName:=extractFileName(DObjet.SocieteCheminPrec.Value);
    case DBComboBox1.ItemIndex of
      0://Type paradox
        OpenDialog1.Filter:='Paradox|*.db';
      1://Type Access
        OpenDialog1.Filter:='Microsoft Access|*.mdb';
      2://TYpe Interbase
        OpenDialog1.Filter:='Interbase|*.gdb';
    end;
  end;
  if OpenDialog1.Execute then
  begin
      if (DObjet.Societe.State <>dsEdit)and(DObjet.Societe.State <>dsEdit)then
         DObjet.Societe.Edit;
    DObjet.SocieteCheminPrec.Value:=OpenDialog1.FileName;
  end
end;

procedure TFSociete.SpeedButton11Click(Sender: TObject);
begin
  DObjet.t_Consolide.Insert;
  DObjet.t_ConsolideSiege.Value :=DObjet.SocieteCode.Value ;
  DObjet.t_ConsolideAgence.Value :=DObjet.q_SocieteCode.Value ;
  DObjet.t_Consolide.Post;
end;

procedure TFSociete.SpeedButton12Click(Sender: TObject);
begin
  DObjet.t_Consolide.Delete;
end;

procedure TFSociete.SpeedButton13Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraimement supprimer Tous?',mtConfirmation,[mbYes,mbNo],0)=mryes then
  begin
    DObjet.Societe.first;
    while not DObjet.Societe.Eof do
      DObjet.Societe.delete;
  end;
end;

procedure TFSociete.SpeedButton5Click(Sender: TObject);
var codeSociete:string;
begin
  DObjet.MAJ_Encours.SQL.Clear;
  DObjet.MAJ_Encours.SQL.Add('UPDATE Societe');
  DObjet.MAJ_Encours.SQL.Add('SET EnCours=0');
  DObjet.MAJ_Encours.SQL.Add('WHERE Logiciel='''+Logic+'''');
  DObjet.MAJ_Encours.ExecSQL;
  codeSociete := DObjet.SocieteCode.Value;
  DObjet.Societe.Requery;
  if not DObjet.Societe.Locate('Code',codeSociete,[]) then
  begin
    showMessage('code introuvale pa recherche');
    exit;
  end;
  if (DObjet.Societe.State <> dsEdit) and
     (DObjet.Societe.State <> dsInsert) then
    DObjet.Societe.Edit;
  DObjet.SocieteEnCours.Value := -1;
end;

procedure TFSociete.SpeedButton16Click(Sender: TObject);
begin
  PageControl2.SelectNextPage(false);
end;

procedure TFSociete.SpeedButton15Click(Sender: TObject);
begin
  PageControl2.SelectNextPage(true);
end;

procedure TFSociete.SpeedButton18Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraimement supprimer ?',mtConfirmation,
    [mbYes,mbNo],0)=mryes then DObjet.Societe.delete;
end;

procedure TFSociete.SpeedButton17Click(Sender: TObject);
begin
  DObjet.Tempon.open;
  DObjet.Tempon.first;
  DObjet.Tempon.edit;
  DObjet.TemponString1.Value:='';
  DObjet.TemponString2.Value:='';
  DObjet.Tempon.post;
  close;
end;

procedure TFSociete.BitBtn3Click(Sender: TObject);
begin
  if (DObjet.SelAdresse.State =dsEdit)or(DObjet.SelAdresse.State =dsInsert) then
    DObjet.SelAdresse.Post;
  if (DObjet.SelInterloc.State =dsEdit)or(DObjet.SelInterloc.State =dsInsert) then
    DObjet.SelInterloc.Post;
  if (DObjet.Societe.State =dsEdit)or(DObjet.Societe.State =dsInsert) then
    DObjet.Societe.Post;
  if (DObjet.SocieteLogiciel.Value = 'Compta') then         //AND (BitBtn3.Caption ='Terminer')
  try
    DObjet.Operation.Close;
    DObjet.Operation.SQL.Clear;
    DObjet.Operation.SQL.Add('CREATE DATABASE '+DObjet.SocieteChemin.Value +' TEMPLATE s_template');
    DObjet.Operation.ExecSQL;
  except
    On E:Exception do
      //showMessage(e.Message);
  end;
  DObjet.Tempon.first;
//  if DObjet.TemponString2.Value<>DObjet.SocieteChemin.Value then
//  begin

    DObjet.Tempon.edit;
    DObjet.TemponString1.Value:=DObjet.SocieteCode.Value;
    DObjet.TemponString2.Value:=DObjet.SocieteChemin.Value;
    DObjet.TemponString3.Value:=DObjet.SocieteRegistre.Value;
    DObjet.Tempon.post;
//  end;
  ModalResult:=mrOK;

end;

procedure TFSociete.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00FFFF80;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);

end;

end.
