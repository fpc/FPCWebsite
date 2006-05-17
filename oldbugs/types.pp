Unit types;
{
 Define types for the contrib program.
}

Interface

Type
  TStatus     = (unFixed,fixed,unreproducable);
  TSortMethod = (Asc,Desc);
  TSortOn     = (ID,AddDate,FixDate,Title,Status,OS);
  ToSes       = (osAll,osGo32v1,osGo32v2,osLinux,osOSTWO,osWin32);
  TCategory   = (Compiler,RTL,Language,Crash,Compatibility,idetext,idegui,docs,misc);

Const  
    DescSize = 1024;
    ProgSize = 1024*6;
    LastCategory = misc;
 
Type  
   DescArray = Array[1..DescSize+1] of char;
   ProgArray = Array[1..ProgSize+1] of char;
  
  TEntry = record
    { User editable data }
    BugId         : Longint; { for unique ID number - retrieve only }
    Title         : Array[1..129] of char;
    Name,
    email         : Array[1..81] of char;
    os            : TOses;
    adddate,
    fixdate       : Array[1..13] of char;
    fixer         : Array[1..81] of char;
    FixVersion    : Array[1..31] of char;
    category      : TCategory;
    status        : Tstatus;
    comment       : Array[1..256] of char;
    Desc          : DescArray;
    Prog          : ProgArray;
    end;
  PEntry = ^TEntry;  
  TEntryCallBack = Procedure (Const Entry : TEntry);
   
Const
    OSNames : Array [TOses] of string [6] =
             ('All','GO32V1','GO32V2','Linux','OS/2','Win32'); 
    StatusNames : Array[TStatus] of String[14] = 
                  ('Unfixed','Fixed','Unreproducable');
    SortNAmes : Array[TSortOn] of String[7] = 
      ('BugId','AddDate','FixDate','Title','Status','OS');

    NrCategories = 5;
    CategoryNames : array [TCategory] of string[15] = 
                     ('Compiler','RTL','Language','Crash','Compatibility',
                     'IDE(Text)','IDE(GUI)','Misc','Documentation');

    CreateQuery1  = 'create table bugs ( BugId INT NOT NULL AUTO_INCREMENT, '+
                  'Title CHAR(128), Name CHAR(80), Email CHAR(80), '+
                  'Os ENUM ("All","GO32V1","GO32V2","Linux","OS/2","WIN32"), '+
                  'AddDAte DATE, FixDate DATE, Fixer CHAR(80), ';
    CreateQuery2 = 'FixVersion CHAR(30), Category TINYINT, ' +
                  'Status ENUM("Unfixed","Fixed","Unreproducable"), ' + 
                  'comment CHAR(255), Descr TEXT, Prog TEXT, UNIQUE (BugId) )';  

Var CreateQuery : Pchar;
    EmptyEntry : TEntry;

Procedure InitEntry (Var Entry : TEntry);
 { Init an entry, allocate space for desc }
Procedure ResetEntry (Var Entry : TEntry);
 { Init an entry, preserve and set desc to empty string }
Procedure DoneENtry (Var Entry : Tentry);
 { Frees memory pointed to by desc }
Function ToCategory (Const Value : String): TCategory;
 { converts name to category }
Function ToOS  (Const Value : String): TOses;
 { Converts name to OS }
Function ToStatus (Const Value : String): TStatus;
 { Converts name to Status }
Function ToSort (Const Value : string): TSortOn;
  { converts name to sortmethod }
Function inttostr (I : Longint): String;
 { convert integer to string }
Function strtoint (S : String): Longint;
 { convert string to integer. In case of error, -1 is returned }
Function StrReAlloc(var P : Pchar; NewLen : Longint) : pchar;
Function StrToPchar(Const S: String) : Pchar;

implementation

uses strings;

Function StrToPchar(Const S: String) : Pchar;
{
 Allocates a new pchar that contains a copy of S.
}
begin
  StrtoPChar:=StrPCopy(StrAlloc(Length(S)+1),S);
end;

Function StrReAlloc(var P : Pchar; NewLen : Longint) : pchar;
{
  Assigns NewLen+1 bytes on the heap; copies P to it and disposes of P;
  returns pointer to the END of the new string.
}
Var Pp : pchar;

begin
  pp:=stralloc(newlen+1);
  StrRealloc:=StrEcopy(pp,p);
  strDispose(p);
  P:=pp;
end;

Function inttostr (I : Longint): String;
 { convert integer to string }
Var temp : string[9];

begin
  temp:='';
  str (i,temp);
  inttostr:=temp;
end;

Function strtoint (S : String): Longint;
 { convert string to integer. In case of error, -1 is returned }
Var R : longint;
    Code : integer;
    
begin
  Val (s,r,code);
  If Code=0 then StrToINt:=R else StrToInt:=-1;
end;

Procedure InitEntry (Var Entry : TEntry);
 { Init an entry, allocate space for desc }
 
begin
  FillChar(Entry,SizeOf(Entry),#0);
end;

Procedure ResetEntry (Var Entry : TEntry);
 { Init an entry, preserve and set desc to empty string }
Var 
  TDesc : DescArray;
  TProg : ProgArray;
  
begin
  TDesc:=Entry.Desc;
  TProg:=Entry.Prog;
  InitEntry(Entry);
  Entry.Desc:=TDesc;
  Entry.Prog:=TProg;
end;

Procedure DoneENtry (Var Entry : Tentry);
 { Frees memory pointed to by desc }
begin
  Entry:=EmptyEntry;
end;

Function ToCategory (Const Value : String): TCategory;
 { converts name to category }

Var I: TCategory;

begin
  ToCategory:=Compiler;
  For I:=Compiler to LastCategory do
    If Value=CategoryNames[i] then ToCategory:=I;
end;

Function ToOS  (Const Value : String): TOses;
 { Converts name to OS }
Var I : TOses;

begin
  ToOS :=OsAll;
  For i:=osAll to OsWin32 do
    if value=osnames[i] then ToOS:=I;
end;

Function ToStatus (Const Value : String): TStatus;
 { Converts name to Status }
Var I : TStatus;

begin
  ToStatus:=unfixed;
  For i:=unfixed to unreproducable do
    if value=StatusNames[i] then ToStatus:=I;
end;

Function ToSort (Const Value : string): TSortOn;
  { converts name to sortmethod}

Var i : TSortOn;

begin
  ToSort:=ID;
  For i:=Id to OS do
    if value=sortnames[i] then ToSort:=I;
end;

begin
  CreateQuery:=StrAlloc(Length(CreateQuery1)+Length(CreateQuery2)+1);
  StrPcopy(StrEnd(StrPCopy(CreateQuery,CreateQuery1)),CreateQuery2);
  FillChar(EmptyEntry,SizeOf(TEntry),#0);
end.