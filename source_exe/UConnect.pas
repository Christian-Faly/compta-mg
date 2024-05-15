unit UConnect;

interface

uses
  SysUtils, Classes, DB, ADODB,Dialogs,ComObj;

type
  TDaConnect = class(TDataModule)
    C_Compta: TADOConnection;
    C_Document: TADOConnection;
    C_Document_1: TADOConnection;
    C_Societe: TADOConnection;
    C_Temporaire: TADOConnection;
    C_Utilisateur: TADOConnection;
    Operation_temp: TADOQuery;
    procedure C_ComptaExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure C_DocumentExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure C_Document_1ExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure C_TemporaireExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangeCheminConnection(C:TADOConnection;ip,chemin:string);
    procedure SortieExcel(DataSet:TDataSet);
  end;

var
  DaConnect: TDaConnect;

implementation

uses TypeElmt, informat;

{$R *.dfm}

procedure TDaConnect.ChangeCheminConnection(C:TADOConnection;ip,chemin:string);
var ConnectionString:string;
begin
  ConnectionString   := 'Provider=MSDASQL.1;Persist Security Info=False;'+
                                    'Extended Properties="DRIVER={PostgreSQL Unicode};'+
                                    'DATABASE='+chemin+';'+
                                    'PASSWORD=vony;'+
                                    'SERVER='+ip+';PORT=5432;UID=postgres;SSLmode=disable;'+
                                    'ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;'+
                                    'RowVersioning=0;ShowSystemTables=0;ConnSettings=;Fetch=100;'+
                                    'UnknownSizes=0;MaxVarcharSize=255;MaxLongVarcharSize=8190;'+
                                    'Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLongVarchar=1;'+
                                    'UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSysTablePrefixes=;'+
                                    'LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;'+
                                    'UseServerSidePrepare=1;LowerCaseIdentifier=0;GssAuthUseGSS=0;XaOpt=1"';

{  ConnectionString:='Provider=MSDASQL.1;'+
             'Persist Security Info=False;'+
             'Data Source=O_Document;'+
             'Extended Properties="DSN=O_Document;'+
             'DBQ='+EnleveBlancDroite(Chemin)+';'+
             'DriverId=25;'+
             'FIL=MS Access;'+
             'MaxBufferSize=2048;'+
             'PageTimeout=5;"';}
  C.close;
  C.connectionString:=ConnectionString;
  //C.DefaultDatabase :=Chemin;
  C.Open;
end;

procedure TDaConnect.SortieExcel(DataSet:TDataSet);
var
  XApp:Variant;
  sheet:Variant;
  r,c:Integer;
  q:Integer;
  row,col:Integer;
  fildName:Integer;
  convert:LongInt;
  typ:string;
begin
  try
    begin
      XApp:=CreateOleObject('Excel.Application');
      XApp.Visible:=true;   // Excel visible
    end;
  except
    showmessage('Impossible d''établir des liens avec MS Excel, il semble que ce n''est pas installé sur ce système.');
    exit;
  end;

  FInformat.Asehoy('Ecriture Excel en cours ',' PATIENTEZ...',1000000);
  XApp.WorkBooks.Add(-4167);  //Ouvrir un nouveau classeur
  XApp.WorkBooks[1].WorkSheets[1].Name:='Feuille1';
          //donner un nom nécessaire pour ExcelSheet
  sheet:=XApp.WorkBooks[1].WorkSheets['Feuille1'];
  q:=1;
  for fildName:=0 to DataSet.FieldCount-1 do
         //TDataset référer à la toute base de données contenant des données
  begin
    //q:=fildName+1;
    if DataSet.Fields[fildName].Visible then
    begin
      case DataSet.Fields[fildName].DataType of
        ftFixedChar, ftWideString,ftMemo:typ := 'string';
        ftSmallint, ftInteger, ftWord,ftLargeint,ftAutoInc:typ := 'integer';
        ftBoolean:typ := 'Boolean';
        ftFloat, ftCurrency, ftBCD:typ := 'float';
        ftDate, ftTime, ftDateTime, ftTimeStamp:typ :='date';
        ftBytes, ftVarBytes,  ftBlob, ftGraphic, ftFmtMemo,ftUnknown,
        ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor,
        ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob,
        ftVariant, ftInterface, ftIDispatch, ftGuid, ftFMTBcd:typ := 'autre';
      end;
      sheet.Cells[1,q]:=DataSet.Fields[fildName].DisplayLabel+'('+typ+')';   // entrer en-têtes de colonnes
      q:=q+1;
    end;
  end;

  //maintenant fournir les données de table en excel
  DataSet.First;
  for r:=0 to DataSet.RecordCount-1 do
  begin
    col:=1;
    for c:=0 to DataSet.FieldCount-1 do
    begin
      row:=r+2;
      //DataSet.Fields[c].FieldName
      //col:=c+1;
      if DataSet.Fields[c].Visible then
      begin
        if (DataSet.Fields[c].FieldName='stat')or (DataSet.Fields[c].FieldName='nif') then
          sheet.Cells[row,col] := '''' + DataSet.Fields[c].AsString
        else
        case DataSet.Fields[c].DataType of
          ftSmallint, ftInteger, ftWord, ftAutoInc, ftLargeint:
              sheet.Cells[row,col] := DataSet.Fields[c].AsString;
          ftFloat, ftCurrency, ftBCD:
              sheet.Cells[row,col] := DataSet.Fields[c].AsString;
          ftDate, ftDateTime:
            sheet.Cells[row,col] := FormatDateTime('mm/dd/yyyy',DataSet.Fields[c].Value)
          else
            sheet.Cells[row,col] := '''' + DataSet.Fields[c].AsString;
        end;
        col:=col+1;
      end;
    end;
    DataSet.Next;
  end;
  XApp.WorkSheets['Feuille1'].name := 'Exporté de ' + DataSet.Name;
  FInformat.Close;
end;

procedure TDaConnect.C_ComptaExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  C_Compta.CommitTrans;
end;

procedure TDaConnect.C_DocumentExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  C_Document.CommitTrans;
end;

procedure TDaConnect.C_Document_1ExecuteComplete(
  Connection: TADOConnection; RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  C_Document_1.CommitTrans;
end;

procedure TDaConnect.C_TemporaireExecuteComplete(
  Connection: TADOConnection; RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  C_Temporaire.CommitTrans;
end;

end.













