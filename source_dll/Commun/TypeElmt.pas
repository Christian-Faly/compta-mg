unit TypeElmt;

interface

uses SysUtils, Windows, Classes, Consts, Dialogs, DBTables;

type
  EInvalidDest = class(EStreamError);
  EFCantMove = class(EStreamError);


function  EnleveExtension(ndf:string):string;
function  AvadihoInt64(valStr:string;var valeur:Int64):boolean;
function  AvadihoReal(valStr:string;var valeur:double):boolean;
function  AvadihoPourc(valeur:double;var valStr:string):boolean;
function  EnleveBlanc(orig:string):string;
function  EnleveBlancDroite(orig:string):string;
function  EnleveBlancGD(orig:string):string;
function  IntDate(dt:TDateTime):real;
function  Diff(dt1,dt2:TDateTime;var dff:integer):boolean;
function  DureeMinute(dt1,dt2:TDateTime;var nbjour:integer;var dt:TDateTime):boolean;
function  IsFinDuMois(dt:TDateTime):boolean;
function  MetterFinMois(y,m:word):TDateTime;
function  AligneDroite(chiffre:string):string;
function  TouteLettre(arrete:boolean;chiffre:real):string;
procedure LettreC(chiffre:real;var lettre:string);
function  EnleverLettre(st:string;lettre:string):string;
function  Parenthese(txt:string;siNegatif:boolean):string;
function  Minuscule(txt:string;PremierMaj:boolean):string;
function  IncrementeAuto(Numero:string;pos1,long:smallint):string;
function  ExtraireCode(Text:string):string;

procedure CopyFile(const FileName, DestName: string);
procedure MoveFile(const FileName, DestName: string);
function  GetFileSize(const FileName: string): LongInt;
function  FileDateTime(const FileName: string): TDateTime;
function  HasAttr(const FileName: string; Attr: Word): Boolean;
function  ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer): THandle;

implementation

uses Forms, ShellAPI, RtlConsts;

const
  SInvalidDest = 'Destination %s does not exist';
  SFCantMove = 'Cannot move file %s';


function  EnleveExtension(ndf:string):string;
var nd:string;
  i:word;
begin
  nd:='';
  for i:=1 to length(ndf) do
    if copy(ndf,i,1)<>'.' then
      nd:=nd+copy(ndf,i,1)
    else
      break;
  result:=nd;
end;

function  IncrementeAuto(Numero:string;pos1,long:smallint):string;
var inc:longint;
    i:integer;
    stinc,stfrmat:string;
begin
  stinc:=copy(Numero,pos1,long);
  try
    inc:=strtoint(stinc);
  except
    On EConvertError do inc:=0;
  end;
  inc:=inc+1;
  stfrmat:='';for i:=1 to long do stfrmat:=stfrmat+'0';
  result:=copy(Numero,1,pos1-1)+formatFloat(stfrmat,inc)+copy(Numero,Pos1+long,100);
end;


function Parenthese(txt:string;siNegatif:boolean):string;
begin
  Result:=txt;
  if siNegatif then
  begin
    if copy(txt,1,1)='-' then
    begin
      txt:= copy(txt,2,length(txt));
      Result:='('+txt+')';
    end
  end
  else
    Result:='('+txt+')';
end;

function  Minuscule(txt:string;PremierMaj:boolean):string;
begin
  Result:=txt;
  if PremierMaj then
     Result:= UpperCase(copy(txt,1,1))+ LowerCase(copy(txt,2,length(txt)))
  else
     Result:= LowerCase(copy(txt,2,length(txt)));
end;

function  EnleverLettre(st:string;lettre:string):string;
var n:integer;
begin
  for n:=1 to length(st) do
    if copy(st,n,1)=lettre then Delete(st,n,1);
  result:=st;
end;

function IsFinDuMois(dt:TDateTime):boolean;
var y,m,d:word;
  izy:boolean;
begin
  izy:=false;
  decodeDate(dt,y,m,d);
  try
    EncodeDate(y,m,d+1);
  except
    On EConvertError do izy:=true;
  end;
  result:=izy;
end;

procedure LettreC(chiffre:real;var lettre:string);
type TUnite=string[15];
     TDisaine=string[15];
     TCentaine=string[15];
var unite:array[0..19]of Tunite;
    disaine:array[0..10]of TDisaine;
    x,x1,x2:integer;
    lettre2:string;
begin
  if chiffre=0 then exit;
  unite[0]:='z�ro ';     unite[1]:='un ';
  unite[2]:='deux ';     unite[3]:='trois ';
  unite[4]:='quatre ';   unite[5]:='cinq ';
  unite[6]:='six ';      unite[7]:='sept ';
  unite[8]:='huit ';     unite[9]:='neuf ';
  unite[10]:='dix ';     unite[11]:='onze ';
  unite[12]:='douze ';   unite[13]:='treize ';
  unite[14]:='quatorze ';unite[15]:='quize ';
  unite[16]:='seize ';   unite[17]:='dix sept ';
  unite[18]:='dix huit ';unite[19]:='dix neuf ';
  if chiffre<20 then
  begin
    x:=trunc(chiffre);
    lettre:=unite[x];
    exit;
  end;
  disaine[1]:='dix ';         disaine[2]:='vingt ';
  disaine[3]:='trente ';      disaine[4]:='quarante ';
  disaine[5]:='cinquante ';   disaine[6]:='soixante ';
  disaine[8]:='quatre vingt ';
  if (chiffre>=20) and (chiffre<100) then
  begin
    x:=trunc(chiffre);
    x1:=trunc(chiffre/10);
    x2:=x-x1*10;
    if x1 in [1,2,3,4,5,6,8] then
    begin
      lettre:=disaine[x1];
      if x2>0 then lettre:=lettre+' '+unite[x2];
    end
    else
    begin
      lettre:=disaine[x1-1];
      x2:=x-(x1-1)*10;
      if x2>0 then lettre:=lettre+unite[x2];
    end;
    exit;
  end;
  if (chiffre>=100) and (chiffre<1000) then
  begin
    x:=trunc(chiffre);
    x1:=trunc(chiffre/100);
    x2:=x-x1*100;
    if x1=1 then lettre:='cent '
    else lettre:=unite[x1]+' cent ';
    lettreC(x2,lettre2);
    lettre:=lettre+' '+lettre2;
    exit;
  end;
end;

function TouteLettre(arrete:boolean;chiffre:real):string;
var milliard,million,mille,cent:longint;
  lettre2,lettre:string;
  tmp:real;
begin
  chiffre:=round(chiffre);
  lettre:='';
  tmp:=chiffre/1000000000;
  milliard:=trunc(tmp);
  tmp:=chiffre-milliard*1000000000;
  million:=trunc(tmp);
  million:=million DIV 1000000;
  tmp:=trunc(chiffre-milliard*1000000000-million*1000000);
  mille:=trunc(tmp);
  mille:=mille DIV 1000;
  tmp:=trunc(chiffre-milliard*1000000000-million*1000000-mille*1000);
  cent:=trunc(tmp);
  if milliard>0 then
  begin
    lettreC(Milliard,lettre2);
    lettre:=lettre2+' milliard ';
  end;
  if million>0 then
  begin
    lettreC(Million,lettre2);
    lettre:=lettre+lettre2+' millions ';
  end;
  if mille>0 then
  begin
    if mille=1 then lettre:=lettre+' mille '
    else
    begin
      lettreC(Mille,lettre2);
      lettre:=lettre+lettre2+' milles ';
    end;
  end;
  if cent>0 then
  begin
    lettreC(Cent,lettre2);
    lettre:=lettre+lettre2;
  end;
  if chiffre=0 then lettre:='zero';
  lettre[1]:=UpCase(Lettre[1]);
  if arrete then lettre:=' Arr�t� � la somme de :'+lettre;
  result:=lettre;
end;

function  AligneDroite(chiffre:string):string;
begin
  while length(chiffre)<13 do Chiffre:=' '+chiffre;
  result:=chiffre;
end;


function MetterFinMois(y,m:word):TDateTime;
var dt1:TDateTime;
  i:word;
begin
  dt1:=date;
  for i:=28 to 31 do
  try
    dt1:=EncodeDate(y,m,i);
  except
    On EConvertError do break;
  end;
  Result:=dt1;
end;

function  IntDate(dt:TDateTime):real;
var y,m,d:word;
    y1,m1,d1:real;
begin
  decodedate(dt,y,m,d);
  y1:=y;
  m1:=m;
  d1:=d;
  result:=(y1*10000)+(m1*100)+d1;
end;

function DureeMinute(dt1,dt2:TDateTime;var nbjour:integer;var dt:TDateTime):boolean;
var Hour1, Min1, Sec1, MSec1: Word;
    Hour2, Min2, Sec2, MSec2: Word;
    Hour, Min, Sec, MSec: Word;
begin
  DureeMinute:=false;
  DecodeTime(dt1,Hour1,Min1,Sec1,MSec1);
  DecodeTime(dt2,Hour2,Min2,Sec2,MSec2);
  Hour:=0;Min:=0;Sec:=0;MSec:=0;
  if not diff(dt1,dt2,nbjour) then exit;
  if nbjour>0 then
  begin
    nbjour:=nbjour-1;
    hour:=24-hour1;
    hour1:=0;
  end;
  if hour1<hour2 then
  begin
    hour:=hour+hour2-hour1;
    if hour>=24 then
    begin
      nbjour:=nbjour+1;
      hour:=hour-24;
    end;
    if Min1>0 then
    begin
       hour:=hour-1;
       Min:=60-Min1;
       Min1:=0;
    end;
  end;
  if Min1>Min2 then exit;
  Min:=Min+Min2-Min1;
  if Min>=60 then
  begin
    Hour:=Hour+1;
    Min:=Min-60;
  end;
    dt:=EncodeTime(Hour, Min, Sec, MSec);
  DureeMinute:=false;
end;

function EnleveBlanc(orig:string):string;
var i:integer;
dest:string;
begin
  dest:='';
  for i:=1 to length(orig) do
  begin
    if (copy(orig,i,1)='-')or(copy(orig,i,1)=',') or
       (copy(orig,i,1)='%')or //(copy(orig,i,1)='\')or
       (copy(orig,i,1)='/') or(copy(orig,i,1)='�')or
       (('a'<=copy(orig,i,1))and(copy(orig,i,1)<='z'))or
       (('A'<=copy(orig,i,1))and(copy(orig,i,1)<='Z'))or
       ((copy(orig,i,1)>='0')and (copy(orig,i,1)<='9')) then
    begin
      dest:=dest+copy(orig,i,1);
    end;
  end;
  for i:=1 to length(dest) do if dest[i]='.' then dest[i]:=',';
  result:=dest;
end;

function EnleveBlancDroite(orig:string):string;
var i:integer;
begin
  i:=length(orig);
  if i=0 then
  begin
    Result:='';
    exit;
  end;
  //showMessage('avant '+inttostr(i));
  while orig[i]=' ' do i:=i-1;
  //showMessage('apr�s '+inttostr(i));
  result:=copy(orig,1,i);
end;

function EnleveBlancGD(orig:string):string;
//var i,l:integer;
  // r:string;
begin
  {l:=length(orig);
  i:=1;
  while orig[i]=' ' do
    i:=i+1;
  r:=copy(orig,i,l);}
  Result:=orig;// enleveBlancDroite(r);
end;


function diff(dt1,dt2:TDateTime;var dff:integer):boolean;
var Dt: TDateTime;
begin
  result:=true;
  dff:=0;
  dt:=dt1;
  while DateToStr(dt)<>DateToStr(dt2) do
  begin
    dt:=dt+1;
    dff:=dff+1;
    if dff=1000 then break;
  end;
  if dff=1000 then result:=false;
end;

function AvadihoInt64(valStr:string;var valeur:Int64):boolean;
var i:integer;
  stInt:string;
begin
  stInt := '';
  for i:= 1 to length(valStr) do
    if (valStr[i]>='0') AND (valStr[i]<='9') then
    begin
      stInt := stInt + valStr[i];
    end;
  if stInt>'0' then
  begin
    valeur := StrToInt64(stInt)
  end
  else
  begin
    valeur := 0;
  end;
end;

{
function AvadihoInt64(valStr:string;var valeur:Int64):boolean;
var d,n:real;
    i:integer;
    nomin,denomin:string[50];
    continuer,negatif:boolean;
begin
  for i:=1 to length(valStr) do
    if valStr[i]='.' then valStr[i]:=',';
  continuer:=false;
  result:=false;
  if length(valstr)=0 then
  begin
    Valeur:=0;
    Result:=true;
    exit;
  end;
  Valstr:=EnleveBlanc(valStr);
  if copy(valStr,1,1)='-' then negatif:=true
  else negatif:=false;
  try valeur:=StrToInt(Valstr);
  except
    on EConvertError do continuer:=true;
  end;
  if continuer then
  begin
    //continuer:=false;
    nomin:='';
    i:=1;
    while (i<=length(Valstr)) and
      (copy(Valstr,i,1)<>'/') and
      (copy(Valstr,i,1)<>'%') do
    begin
      nomin:=nomin+copy(Valstr,i,1);
      i:=i+1;
    end;
    try n:=strtofloat(nomin);
    except
      on EConvertError do exit;
    end;
    if comparestr('%',copy(Valstr,i,1))=0 then
    begin
       valeur:=round(n/100);
       result:=true;
       if negatif then valeur:=-abs(valeur);
       exit;
    end;
    //copy(Valstr,i,1)='/'
    i:=i+1;
    denomin:='';
    while (i<=length(Valstr))and
          (copy(Valstr,i,1)<>'%') do
    begin
      denomin:=denomin+copy(Valstr,i,1);
      i:=i+1;
    end;
    try d:=strtofloat(denomin);
    except
      on EConvertError do exit;
    end;
    if Valstr[i]<>'%' then
      valeur:=round(n/d)
    else
      valeur:=round(n/(d*100));
  end;
  if negatif then valeur:=-abs(valeur);
  result:=true;
end;
}

function AvadihoReal(valStr:string;var valeur:double):boolean;
var d,n:real;
    i:integer;
    nomin,denomin:string[50];
    continuer,negatif:boolean;
begin
  for i:=1 to length(valStr) do
    if valStr[i]='.' then valStr[i]:=',';
  continuer:=false;
  result:=false;
  if length(valstr)=0 then
  begin
    Valeur:=0;
    Result:=true;
    exit;
  end;
  Valstr:=EnleveBlanc(valStr);
  if copy(valStr,1,1)='-' then negatif:=true
  else negatif:=false;
  try valeur:=StrToFloat(Valstr);
  except
    on EConvertError do continuer:=true;
  end;
  if continuer then
  begin
    {continuer:=false;}
    nomin:='';
    i:=1;
    while (i<=length(Valstr)) and
      (copy(Valstr,i,1)<>'/') and
      (copy(Valstr,i,1)<>'%') do
    begin
      nomin:=nomin+copy(Valstr,i,1);
      i:=i+1;
    end;
    try n:=strtofloat(nomin);
    except
      on EConvertError do exit;
    end;
    if comparestr('%',copy(Valstr,i,1))=0 then
    begin
       valeur:=n/100;
       result:=true;
       if negatif then valeur:=-abs(valeur);
       exit;
    end;
    {copy(Valstr,i,1)='/'}
    i:=i+1;
    denomin:='';
    while (i<=length(Valstr))and
          (copy(Valstr,i,1)<>'%') do
    begin
      denomin:=denomin+copy(Valstr,i,1);
      i:=i+1;
    end;
    try d:=strtofloat(denomin);
    except
      on EConvertError do exit;
    end;
    if Valstr[i]<>'%' then valeur:=n/d
    else valeur:=n/(d*100);
  end;
  if negatif then valeur:=-abs(valeur);
  result:=true;
end;

function AvadihoPourc(valeur:double;var valStr:string):boolean;
begin
  if valeur<=1 then
  begin
    valeur:=valeur*100;
    {valstr:=FloatToStrF(valeur,ffFixed,8,4);}
    if valeur>0 then
    begin
      valstr:=FormatFloat('0.####',valeur);
      valstr:= valstr+'%';
    end
    else valstr:='';
  end
  else valstr:=floattostr(valeur);
  result:=true;
end;

function ExtraireCode(Text:string):string;
var st:string;
  i:Word;
begin
  i:=1;
  st:= Copy(Text,i,1);
  while (not (st=':')) and (i<10) do
  begin
    i:=i+1;
    st:= Copy(Text,i,1);
  end;
  i:=i-1;
  st:=Copy(Text,1,i);
  Result:=st;
end;


procedure CopyFile(const FileName, DestName: string);
var
  CopyBuffer: Pointer; { buffer for copying }
  BytesCopied: Longint;
  Source, Dest: Integer; { handles }
  Len: Integer;
  Destination: TFileName; { holder for expanded destination name }
const
  ChunkSize: Longint = 8192; { copy in 8K chunks }
begin
  Destination := ExpandFileName(DestName); { expand the destination path }
  if HasAttr(Destination, faDirectory) then { if destination is a directory... }
  begin
    Len :=  Length(Destination);
    if Destination[Len] = '\' then
      Destination := Destination + ExtractFileName(FileName) { ...clone file name }
    else
      Destination := Destination + '\' + ExtractFileName(FileName); { ...clone file name }
  end;
GetMem(CopyBuffer, ChunkSize); { allocate the buffer }
  try
    Source := FileOpen(FileName, fmShareDenyWrite); { open source file }
    if Source < 0 then raise EFOpenError.CreateFmt(SFOpenError, [FileName]);
    try
      Dest := FileCreate(Destination); { create output file; overwrite existing }
      if Dest < 0 then raise EFCreateError.CreateFmt(SFCreateError, [Destination]);
      try
        repeat
          BytesCopied := FileRead(Source, CopyBuffer^, ChunkSize); { read chunk }
          if BytesCopied > 0 then { if we read anything... }
            FileWrite(Dest, CopyBuffer^, BytesCopied); { ...write chunk }
        until BytesCopied < ChunkSize; { until we run out of chunks }
      finally
        FileClose(Dest); { close the destination file }
      end;
    finally
      FileClose(Source); { close the source file }
    end;
  finally
    FreeMem(CopyBuffer, ChunkSize); { free the buffer }
  end;
end;


{ MoveFile procedure }
{
  Moves the file passed in FileName to the directory specified in DestDir.
  Tries to just rename the file.  If that fails, try to copy the file and
  delete the original.

  Raises an exception if the source file is read-only, and therefore cannot
  be deleted/moved.
}

procedure MoveFile(const FileName, DestName: string);
var
  Destination: string;
begin
  Destination := ExpandFileName(DestName); { expand the destination path }
  if not RenameFile(FileName, Destination) then { try just renaming }
  begin
    if HasAttr(FileName, faReadOnly) then  { if it's read-only... }
      raise EFCantMove.Create(Format(SFCantMove, [FileName])); { we wouldn't be able to delete it }
      CopyFile(FileName, Destination); { copy it over to destination...}
//      DeleteFile(FileName); { ...and delete the original }
  end;
end;

{ GetFileSize function }
{
  Returns the size of the named file without opening the file.  If the file
  doesn't exist, returns -1.
}

function GetFileSize(const FileName: string): LongInt;
var
  SearchRec: TSearchRec;
begin
  try
    if FindFirst(ExpandFileName(FileName), faAnyFile, SearchRec) = 0 then
      Result := SearchRec.Size
    else Result := -1;
  finally
    SysUtils.FindClose(SearchRec);
  end;
end;

function FileDateTime(const FileName: string): System.TDateTime;
begin
  Result := FileDateToDateTime(FileAge(FileName));
end;

function HasAttr(const FileName: string; Attr: Word): Boolean;
var
 FileAttr: Integer;
begin
  FileAttr := FileGetAttr(FileName);
  if FileAttr = -1 then FileAttr := 0;
  Result := (FileAttr and Attr) = Attr;
end;


function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer): THandle;
var
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  Result := ShellExecute(Application.MainForm.Handle, nil,
    StrPCopy(zFileName, FileName), StrPCopy(zParams, Params),
    StrPCopy(zDir, DefaultDir), ShowCmd);
end;

end.














