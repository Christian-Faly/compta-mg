unit SaiClient;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Mask, ExtCtrls, ComCtrls, Buttons,
  Dialogs, Grids, DBGrids;

type
  TFSaiClient = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Activite: TLabel;
    EditCode: TDBEdit;
    EditStatut: TDBEdit;
    EditRS: TDBEdit;
    EditActivite: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditNIF: TDBEdit;
    EditATP: TDBEdit;
    EditDtATP: TDBEdit;
    EditQuit: TDBEdit;
    EditDtQuit: TDBEdit;
    EditRegistre: TDBEdit;
    TabSheet3: TTabSheet;
    MemoRemarque: TDBMemo;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EditAdresse: TDBEdit;
    EditCP: TDBEdit;
    EditTel: TDBEdit;
    EditFAX: TDBEdit;
    EditCptBanq: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet4: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EditNom: TDBEdit;
    EditPrenom: TDBEdit;
    EditFonction: TDBEdit;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GridFamille: TDBGrid;
    GridStatut: TDBGrid;
    Label49: TLabel;
    Label48: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit7: TDBEdit;
    Label27: TLabel;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit8: TDBEdit;
    Label28: TLabel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Edit2: TEdit;
    Label4: TLabel;
    S_QNumClient: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridFamilleCellClick(Column: TColumn);
    procedure EditStatutMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridStatutCellClick(Column: TColumn);
    procedure EditStatutChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditStatisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { déclarations privées }
    PCody :^String;
    aj:boolean;
    procedure InsererContact(code:string);
    procedure Enregistrenum;
    procedure TransfertCmpta;
  public
    { déclarations publiques }
    procedure Asehoy(ajout:boolean;contact:string;var cody:string);
  end;

var
  FSaiClient: TFSaiClient;

implementation

uses DaTiers, LstSimpl,  ImporDoc;

{$R *.DFM}

procedure TFSaiClient.Asehoy(ajout:boolean;contact:string;var cody:string);
begin
  DataTiers.QNumClient.Open;
  Edit2.Text:='';
  aj:=ajout;
  if not ajout then SpeedButton1.Visible:=false;
  pcody:=@cody;
  DataTiers.QAdresse1.close;
  DataTiers.QAdresse1.SQL.Clear;
  DataTiers.QAdresse1.SQL.Add('select * from AdresTiers');
  DataTiers.QAdresse1.SQL.Add('where (code=:a)');
  DataTiers.QDivers1.close;
  DataTiers.QDivers1.SQL.Clear;
  DataTiers.QDivers1.SQL.Add('select * from DiverTiers');
  DataTiers.QDivers1.SQL.Add('where code=:a');
  DataTiers.QInterlo1.close;
  DataTiers.QInterlo1.SQL.Clear;
  DataTiers.QInterlo1.SQL.Add('select * from InterTiers');
  DataTiers.QInterlo1.SQL.Add('where code=:a');
  if IsClient then
  begin
    Caption:='Saisie client';
  end
  else
  begin
    Caption:='Saisie fournisseur';
  end;
  if IsCollect then
  begin
    DBEdit4.Top:=77;DBEdit2.Top:=77;Label24.Top:=82;
    EditRS.Top:=53;Label3.Top:=58;
    Label24.Visible:=false; DBEdit4.Visible:=false; DBEdit2.Visible:=false;
    Label2.Visible:=false; EditStatut.Visible:=false;DBEdit1.Visible:=false;
    Activite.Visible:=false;EditActivite.Visible:=false;
  end;
  if not ajout then
    pCody^:=DataTiers.SelTiersCode.Value
  else
    pCody^:='';
  DataTiers.QTiers.close;
  DataTiers.QTiers.paramByName('a').AsString:=pCody^;
  DataTiers.QTiers.open;
  DataTiers.QAdresse1.close;
  DataTiers.QAdresse1.paramByName('a').AsString:=pCody^;
  DataTiers.QAdresse1.open;
  DataTiers.QDivers1.close;
  DataTiers.QDivers1.paramByName('a').AsString:=pCody^;
  DataTiers.QDivers1.open;
  DataTiers.QInterlo1.close;
  DataTiers.QInterlo1.paramByName('a').AsString:=pCody^;
  DataTiers.QInterlo1.open;
  if Ajout then
  begin
    DataTiers.QTiers.Insert;
    DataTiers.QAdresse1.Insert;
    DataTiers.QDivers1.Insert;
    Edit1.Text:='';
    DataTiers.QInterlo1.Insert;
    if length(contact)>0 then InsererContact(contact);
  end
  else
  begin
    DataTiers.QTiers.edit;
    DataTiers.QAdresse1.Edit;
    Edit1.text:=DataTiers.QDivers1Statis.Value;
    DataTiers.QDivers1.Edit;
    DataTiers.QInterlo1.Edit;
  end;
  ShowModal;
end;

procedure TFSaiClient.InsererContact(code:string);
begin
  {Remplissage client}
  DataTiers.QContaCli.close;
  DataTiers.QContaCli.params[0].AsString:=code;
  DataTiers.QContaCli.open;
  if DataTiers.QContaCli.EOF then ShowMessage('Contact non trouvé');
  DataTiers.QTiersStatut.Value:=DataTiers.QContaCliStatut.Value;
  DataTiers.QTiersRS.Value:=DataTiers.QContaCliRS.Value;
  DataTiers.QTiersActivite.Value:=DataTiers.QContaCliActivite.Value;
  {Remplissage Adresse}
  DataTiers.QAdrConta.close;
  DataTiers.QAdrConta.params[0].AsString:=code;
  DataTiers.QAdrConta.open;
  if DataTiers.QAdrConta.EOF then ShowMessage('Adresse contact non trouvé:'+code+'-'+DataTiers.QAdrConta.DataBaseName);
  DataTiers.QAdresse1Adresse.Value:=DataTiers.QAdrContaAdresse.Value;
  DataTiers.QAdresse1CP.Value:=DataTiers.QAdrContaCP.Value;
  DataTiers.QAdresse1Tel.Value:=DataTiers.QAdrContaTel.Value;
  DataTiers.QAdresse1FAX.Value:=DataTiers.QAdrContaFAX.Value;
  DataTiers.QAdresse1SiteWeb.Value:=DataTiers.QAdrContaSiteWeb.Value;
  DataTiers.QAdresse1EMail.Value:=DataTiers.QAdrContaEMail.Value;
  DataTiers.QAdresse1Ville.Value:=DataTiers.QAdrContaVille.Value;
  DataTiers.QAdresse1Pays.Value:=DataTiers.QAdrContaPays.Value;
  {Remplissage Adresse}
  DataTiers.QDivConta.close;
  DataTiers.QDivConta.params[0].AsString:=code;
  DataTiers.QDivConta.open;
  if DataTiers.QDivConta.EOF then ShowMessage('Info divers contact non trouvé');
  DataTiers.QDivers1Statis.Value:=DataTiers.QDivContaStatis.Value;
  DataTiers.QDivers1NIF.Value:=DataTiers.QDivContaNIF.Value;
  DataTiers.QDivers1ATP.Value:=DataTiers.QDivContaATP.Value;
  DataTiers.QDivers1DtATP.Value:=DataTiers.QDivContaDtATP.Value;
  DataTiers.QDivers1Quit.Value:=DataTiers.QDivContaQuit.Value;
  DataTiers.QDivers1DtQuit.Value:=DataTiers.QDivContaDtQuit.Value;
  DataTiers.QDivers1Registre.Value:=DataTiers.QDivContaRegistre.Value;
  {Remplissage Adresse}
  DataTiers.QIntConta.close;
  DataTiers.QIntConta.params[0].AsString:=code;
  DataTiers.QIntConta.open;
  if DataTiers.QIntConta.EOF then ShowMessage('Interlocuteur contact non trouvé');
  DataTiers.QInterlo1Nom.Value:=DataTiers.QIntContaNom.Value;
  DataTiers.QInterlo1Prenom.Value:=DataTiers.QIntContaPrenom.Value;
  DataTiers.QInterlo1Fonction.Value:=DataTiers.QIntContaFonction.Value;
end;

procedure TFSaiClient.TransfertCmpta;
begin
  DataTiers.TNumCmpt.Close;
  DataTiers.TFournis.Close;
  if IsClient then
  begin
    DataTiers.TNumCmpt.ParamByName('a').AsString:='4111';
    DataTiers.TNumCmpt.ParamByName('b').AsString:='4111Z';
    DataTiers.TFournis.TableName:='Client1.db';
    DataTiers.TAdresse1.TableName:='AdresCli.DB';
    DataTiers.TDivers1.TableName:= 'DiverCli.db';
    DataTiers.TInterloc1.TableName:= 'InterCli.db';
  end
  else
  begin
    DataTiers.TNumCmpt.ParamByName('a').AsString:='4011';
    DataTiers.TNumCmpt.ParamByName('b').AsString:='4012Z';
    DataTiers.TFournis.TableName:='Fournis1';
    DataTiers.TAdresse1.TableName:='AdresFou';
    DataTiers.TDivers1.TableName:= 'DiverFou';
    DataTiers.TInterloc1.TableName:='InterFou';
  end;
  DataTiers.TNumCmpt.Open;
  DataTiers.TFournis.Open;
  DataTiers.TAdresse1.Open;
  DataTiers.TDivers1.Open;
  DataTiers.TInterloc1.Open;
  while not DataTiers.TNumCmpt.Eof do
  begin
    try
      DataTiers.TFournis.Insert;
      DataTiers.TFournisCode.Value:= Copy(DataTiers.TNumCmptNumCpt.Value,5,6);
      DataTiers.TFournisRS.Value:=DataTiers.TNumCmptIntitule.Value ;
      DataTiers.TFournis.Post;
    except
      On EDataBaseError do
      begin
        ShowMessage('Cpt:'+DataTiers.TNumCmptNumCpt.Value+'-'
                          +DataTiers.TNumCmptIntitule.Value);
        DataTiers.TFournis.cancel;
      end;
    end;
    DataTiers.QNumAdres.Close;
    DataTiers.QNumAdres.Params[0].AsString:=DataTiers.TNumCmptNumCpt.Value;
    DataTiers.QNumAdres.Open;
    try
      DataTiers.TAdresse1.Insert;
      DataTiers.TAdresse1Code.Value :=Copy(DataTiers.TNumCmptNumCpt.Value,5,6);
      DataTiers.TAdresse1Adresse.Value := DataTiers.QNumAdresAdresse.Value ;
      DataTiers.TAdresse1CP.Value :=DataTiers.QNumAdresCP.Value ;
      DataTiers.TAdresse1Tel.Value :=DataTiers.QNumAdresTEL.Value ;
      DataTiers.TAdresse1FAX.Value :=DataTiers.QNumAdresFax.Value;
      DataTiers.TAdresse1CptBanq.Value :=DataTiers.QNumAdresCptBQ.Value;
      DataTiers.TAdresse1Pays.Value :=DataTiers.QNumAdresPays.Value ;
      DataTiers.TAdresse1.Post;
    except
      On EDataBaseError do
      begin
        ShowMessage('Adresse:'+Copy(DataTiers.TNumCmptNumCpt.Value,5,6)+'-'
                          +DataTiers.QNumAdresAdresse.Value);
        DataTiers.TAdresse1.Cancel;
      end;
    end;

    DataTiers.QNumDiver.Close;
    DataTiers.QNumDiver.Params[0].AsString:=DataTiers.TNumCmptNumCpt.Value;
    DataTiers.QNumDiver.Open;
    try
      DataTiers.TDivers1.Insert;
      DataTiers.TDivers1Code.Value := Copy(DataTiers.TNumCmptNumCpt.Value,5,6);
      DataTiers.TDivers1Statis.Value :=DataTiers.QNumDiverStatistique.Value ;
      DataTiers.TDivers1NIF.Value :=DataTiers.QNumDiverNIF.Value;
      DataTiers.TDivers1ATP.Value :=DataTiers.QNumDiverTP.Value;
      DataTiers.TDivers1DtATP.Value :=DataTiers.QNumDiverDateTP.Value;
      DataTiers.TDivers1Quit.Value :=DataTiers.QNumDiverQuittance.Value;
      DataTiers.TDivers1DtQuit.Value :=DataTiers.QNumDiverDateQuit.Value;
      DataTiers.TDivers1.Post;
    except
      On EDataBaseError do
      begin
        ShowMessage('Divers:'+Copy(DataTiers.TNumCmptNumCpt.Value,5,6)+'-'
                          +DataTiers.QNumDiverStatistique.Value);
        DataTiers.TDivers1.Cancel;
      end;
    end;

    DataTiers.QNumLoc.Close;
    DataTiers.QNumLoc.Params[0].AsString:=DataTiers.TNumCmptNumCpt.Value;
    DataTiers.QNumLoc.Open;
    try
      DataTiers.TInterloc1.Insert ;
      DataTiers.TInterloc1Code.Value  :=Copy(DataTiers.TNumCmptNumCpt.Value,5,6);;
      DataTiers.TInterloc1Nom.Value :=DataTiers.QNumLocInterloc.Value;
      DataTiers.TInterloc1Fonction.Value := DataTiers.QNumLocFonction.value;
      DataTiers.TInterloc1.Post ;
    except
      On EDataBaseError do
      begin
        ShowMessage('Interloc:'+Copy(DataTiers.TNumCmptNumCpt.Value,5,6)+'-'
                          +DataTiers.QNumLocInterloc.Value);
        DataTiers.TInterloc1.Cancel ;
      end;
    end;

    DataTiers.TNumCmpt.Next;
  end;
end;

procedure TFSaiClient.BitBtn1Click(Sender: TObject);
var i:integer;
begin
  if length(DataTiers.QTiersCode.Value)=0 then
  begin
    ShowMessage('Remplir le code');
    exit;
  end;
  try
    pCody^:=DataTiers.QTiersCode.Value;
    DataTiers.QTiers.Post;
    DataTiers.QAdresse1Code.Value:=pCody^;
    DataTiers.QAdresse1.Post;
    DataTiers.QDivers1Code.Value:=pCody^;
    DataTiers.QDivers1Statis.Value:=Edit1.text;
    DataTiers.QDivers1.Post;
    DataTiers.QInterlo1Code.Value:=pCody^;
    DataTiers.QInterlo1.Post;
    Close;
  except
    On EDataBaseError do showMessage('Ce code existe déjà');
  end;
end;

procedure TFSaiClient.BitBtn2Click(Sender: TObject);
begin
  DataTiers.QTiers.Cancel;
  DataTiers.QAdresse1.Cancel;
  DataTiers.QDivers1.Cancel;
  DataTiers.QInterlo1.Cancel;
  Close;
end;

procedure TFSaiClient.DBEdit4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  GridFamille.Visible:=not GridFamille.Visible;
end;

procedure TFSaiClient.GridFamilleCellClick(Column: TColumn);
var numero,numtal:integer;
    hita:boolean;
begin
  hita:=false;
  DataTiers.QTiersCodeFam.Value:=DataTiers.TFam_CliCode.Value;
  DataTiers.QTiersLibFamille.Value:=DataTiers.TFam_CliLibelle.Value;
  GridFamille.Visible:=FALSE;
  if length(DataTiers.QTiersCode.Value)>0 then exit;
  DataTiers.QTiersFam.Close;
  DataTiers.QTiersFam.SQL.Clear;
  if IsClient then
    DataTiers.QTiersFam.SQL.Add('Select  * from ''Client1.db'' where codeFam=:a')
  else
    DataTiers.QTiersFam.SQL.Add('Select  * from ''Fournis1.db'' where codeFam=:a');
  DataTiers.QTiersFam.ParamByName('a').AsString:=DataTiers.TFam_CliCode.Value;
  DataTiers.QTiersFam.Open;
  if DataTiers.QTiersFam.EOF then
    DataTiers.QTiersCode.Value:=DataTiers.TFam_CliCode.Value+'0001'
  else
  begin
    if not CheckBox1.Checked then DataTiers.QTiersFam.Last
    else
    begin
      numtal:=0;
      DataTiers.QTiersFam.First;
      while not DataTiers.QTiersFam.EOF do
      begin
        numtal:=numero;
        numero:=StrToInt(Copy(DataTiers.QTiersFamCode.Value,3,4));
        if numtal+1<>numero then
        begin
          hita:=true;
          break;
        end;
        DataTiers.QTiersFam.Next;
      end;
    end;
    if (not hita)and CheckBox1.Checked then
      DataTiers.QTiersCode.Value:=DataTiers.QTiersFamCode.Value+FormatFloat('0000',numtal+1)
    else
    begin
      DataTiers.QTiersCode.Value:=IncrementeAuto(DataTiers.QTiersFamCode.Value,3,6);
    end;
  end;
end;

procedure TFSaiClient.EditStatutMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  GridStatut.Visible:=not GridStatut.Visible;
end;

procedure TFSaiClient.GridStatutCellClick(Column: TColumn);
begin
  DataTiers.QTiersStatut.Value:=DataTiers.StatutCode.Value;
  DataTiers.QTiersLibStatut.Value:=DataTiers.StatutLibelle.Value;
  GridStatut.Visible:=FALSE;
end;

procedure TFSaiClient.EditStatutChange(Sender: TObject);
begin
  Label3.Caption:='Dénomination Sociale';
  if DataTiers.QTiersStatut.Value='SNC' then
    Label3.Caption:='Raison Sociale'
  else
    if (DataTiers.QTiersStatut.Value='Mr')or
       (DataTiers.QTiersStatut.Value='Mme')or
       (DataTiers.QTiersStatut.Value='Mlle') then
      Label3.Caption:='Nom';
end;

procedure TFSaiClient.SpeedButton1Click(Sender: TObject);
begin
  if length(DataTiers.QTiersCode.Value)=0 then
  begin
    ShowMessage('Remplir le code');
    exit;
  end;
  if aj then
  try
    pCody^:=DataTiers.QTiersCode.Value;
    DataTiers.QTiers.Post;
    DataTiers.QAdresse1Code.Value:=pCody^;
    DataTiers.QAdresse1.Post;
    DataTiers.QDivers1Code.Value:=pCody^;
    DataTiers.QDivers1.Post;
    DataTiers.QInterlo1Code.Value:=pCody^;
    DataTiers.QInterlo1.Post;
    DataTiers.QTiers.Insert;
    DataTiers.QAdresse1.Insert;
    DataTiers.QDivers1.Insert;
    DataTiers.QInterlo1.Insert;
  except
    On EDataBaseError do
    begin
      showMessage('Ce code existe déjà');
    end;
  end;
end;

procedure TFSaiClient.EnregistreNum;
var misy:boolean;
begin
  DataTiers.TFournis.Open;
  DataTiers.CliByNom.open;
  while not DataTiers.CliByNom.eof do DataTiers.CliByNom.delete;
  DataTiers.TFournis.first;
  while not DataTiers.TFournis.EOF do
  begin
    TRY
      DataTiers.CliByNom.Insert;
      DataTiers.CliByNomNom.Value:= DataTiers.TFournisRS.Value;
      DataTiers.CliByNom.post;
    except
      On EDataBaseError do
      begin
        DataTiers.CliByNom.Cancel;
      end;
    end;
    DataTiers.TFournis.Next;
  end;
  DataTiers.Numeroter;
  misy:=true;
  while misy do
  begin
    misy:=false;
    DataTiers.TFournis.first;
    while not DataTiers.TFournis.EOF do
    begin
      if DataTiers.TFournisCode.Value<>DataTiers.TFournisRenumeroter.Value then
      begin
        misy:=true;
        DataTiers.QAdresse1.close;
        DataTiers.QAdresse1.paramByName('a').AsString:=DataTiers.TFournisCode.Value;
        DataTiers.QAdresse1.open;
        DataTiers.QAdresse1.Edit;
        DataTiers.QAdresse1Code.Value:=DataTiers.TFournisRenumeroter.Value;
        DataTiers.QAdresse1.Post;

        DataTiers.QDivers1.Close;
        DataTiers.QDivers1.paramByName('a').AsString:=DataTiers.TFournisCode.Value;
        DataTiers.QDivers1.open;
        DataTiers.QDivers1.Edit;
        DataTiers.QDivers1Code.Value:=DataTiers.TFournisRenumeroter.Value;
        DataTiers.QDivers1.Post;

        DataTiers.QInterlo1.close;
        DataTiers.QInterlo1.paramByName('a').AsString:=DataTiers.TFournisCode.Value;
        DataTiers.QInterlo1.open;
        DataTiers.QInterlo1.Edit;
        DataTiers.QInterlo1Code.Value:=DataTiers.TFournisRenumeroter.Value;
        DataTiers.QInterlo1.Post;

        DataTiers.TFournis.Edit;
        DataTiers.TFournisCode.Value:=DataTiers.TFournisRenumeroter.Value;
        DataTiers.TFournis.post;
      end;
      DataTiers.TFournis.Next;
    end;
  end;
  {cwcwx}
end;


procedure TFSaiClient.SpeedButton2Click(Sender: TObject);
var i:integer;
  j:longint;
  Code:String;
begin
  EditCode.SetFocus;
  if length(DataTiers.QTiersRS.value)=0 then
  begin
    ShowMessage('Tapez le nom avant de poursuivre');
    exit;
  end;
  for i:=0 to 25 do
  Begin
    if  DataTiers.lettre[i]=Copy(DataTiers.QTiersRS.value,1,1) then break;
  end;
  i:=i+1;
  DataTiers.TFournis.Open;
  DataTiers.TFournis.First;
  while not DataTiers.TFournis.EOF do
  begin
    j:=StrToInt(DataTiers.TFournisCode.Value);
    if j>(i+1)*1000 then break;
    DataTiers.TFournis.Next;
  end;
  code:=DataTiers.TFournisCode.Value;
  if not DataTiers.TFournis.EOF then DataTiers.TFournis.prior;
  if (code=DataTiers.TFournisCode.Value)and
     (copy(DataTiers.TFournisRS.Value,1,1)<>Copy(DataTiers.QTiersRS.value,1,1)) then
  begin
      DataTiers.QTiersCode.Value:=FormatFloat('00000',i*1000+1);
      exit;
  end;
  try
    j:=StrToInt(DataTiers.TFournisCode.Value);
  except
    On EConvertError do
    begin
      DataTiers.QTiersCode.Value:=FormatFloat('00000',i*1000+1);
      exit;
    end;
  end;
  if j>=(i)*1000 then
    DataTiers.QTiersCode.Value:=FormatFloat('00000',j+1)
  else
    DataTiers.QTiersCode.Value:=FormatFloat('00000',i*1000+1);
end;

procedure TFSaiClient.EditStatisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ if RadioGroup1.ItemIndex=0 then
    DataTiers.QTiersCode.Value := DataTiers.QDivers1Statis.Value;}
end;

procedure TFSaiClient.Edit1Change(Sender: TObject);
begin
{  DataTiers.QTiersCode.Value:=edit1.Text;}
end;

procedure TFSaiClient.Edit2Click(Sender: TObject);
begin
  DBGrid1.Visible:=true;
end;

procedure TFSaiClient.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.text:=copy(DataTiers.QNumClient.Fields[0].AsString,5,6);
  DBGrid1.Visible:=FALSE;
end;

procedure TFSaiClient.SpeedButton3Click(Sender: TObject);
begin
  DataTiers.QTiersCode.Value:=Copy(DataTiers.QNumClientNumCpt.Value,5,6);
  DataTiers.QTiersRS.Value:=DataTiers.QNumClientIntitule.Value;
  DataTiers.QAdresse1Code.Value:=Copy(DataTiers.QNumClientNumCpt.Value,5,6);
  DataTiers.QAdresse1Adresse.Value:=DataTiers.QNumClientAdresse.Value;
  DataTiers.QAdresse1CP.Value:=DataTiers.QNumClientCP.Value;
  DataTiers.QAdresse1Tel.Value:=DataTiers.QNumClientTEL.Value;
  DataTiers.QAdresse1FAX.Value:=DataTiers.QNumClientFax.Value;
  DataTiers.QDivers1Code.Value:=Copy(DataTiers.QNumClientNumCpt.Value,5,6);
  DataTiers.QDivers1Statis.Value:=DataTiers.QNumClientStatistique.Value;
  DataTiers.QDivers1NIF.Value:=DataTiers.QNumClientNIF.Value;
  DataTiers.QDivers1ATP.Value:=DataTiers.QNumClientQuittance.Value;
  DataTiers.QDivers1DtATP.Value:=DataTiers.QNumClientDateQuit.Value;
end;

procedure TFSaiClient.SpeedButton4Click(Sender: TObject);
begin
  TransfertCmpta;
end;

procedure TFSaiClient.SpeedButton5Click(Sender: TObject);
begin
  EnregistreNum;
end;

end.
