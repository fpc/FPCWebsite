Unit db;
{
  Unit which implements tha database routines for the bugrep program.
}

interface

Uses mysql,types;

Var DBSock : PMySQL;  
    qmysql : TMySQL;
    DataBaseName : String;
    dbError: Pchar;

Function Connected : Boolean;
  {
    Connected returns true if we're connected to the mysql server.
    If It is not already so, an attempt is made to connect.
    If ther is no connection, or no connection can be made, 
    the result is false;
  }

Function SelectDB : Boolean;
  {
   SelectDb Selects the database to use. By default this is 'test', but
   the DataBaseName variable can be set to another variable. Is successfull,
   true is returned, false otherwise.
  }

Function GetEntries (Query : String; CallBack : TEntryCallBack) : boolean;
{
Gets all entries matching the Entr TEntry; All non-empty fields
of TEntry are used to construct an SQL Query. 
Each matching record is then passed in turn to Callback.
}

Function ReplaceEntry (Const Entr : TEntry) : Boolean;
{
  Replaces an entry in the database. The name and author fields
  are used to identify the entry. Returns True upon succes, false
  upon failure.
}

Function RemoveEntry (Const Entr : TEntry) : Boolean;
{
  Removes an entry from the database. The name and author fields
  are used to identify the entry. Returns True upon succes, false
  upon failure.
}

Function AddEntry (Const Entr : TEntry) : Boolean;
{
  Adds an entry to the database. Returns true upon success, false
  upon failure.
}

Function EntryExists (BugID : Longint; Var Entry : TEntry ): Boolean;
{
  Returns true if an entry exists, false in case of error.
  If An error occurred then DbError is set. If not, Entry is set to
  the record that was found.
}
Function GetNewID : longint;
{
  Get a new ID number for a bug.
}
implementation

uses strings,config;

Function DoQuote (Var P : Pchar) : Pchar;

Var I,J : longint;
    NewP : PChar;
    
begin
  i:=0;
  J:=0;
  While P[I]<>#0 do
    begin
    If P[I]='"' then inc(j);
    Inc(i);
    end;
  NewP:=StrAlloc(I+J);
  i:=0;
  J:=0;
  Repeat
    NewP[J]:=P[i];
    If P[I]='"' then 
      begin
      inc(j);
      NewP[J]:='"'
      end;
    Inc(i);
    Inc(J);
  until P[I]=#0;
  StrDispose(P);
  P:=NewP;
  DoQuote:=@P[J];
end;


Procedure SetError (Value: PCHar);

begin
  If Assigned(DBError) then StrDispose(DbError);
  DbError:=StrAlloc(Strlen(Value)+1);
  StrCopy(dbError,Value);
end;


Function Connected : Boolean;
{
 Checks if we are connected to mysql server. 
 If not, a connection attempt is made.
}
begin
  Connected:=DbSock<>Nil;
  If Not Connected then
    begin
    DbSock:=mysql_connect(PMysql(@qmysql),dbhost,dbuser,dbpasswd);
    if DbSock=Nil then 
      begin
      SetError('Couldn''t connect to MySQL server.');
      Writeln (stderr,DbError);
      exit;
      end;
    Connected:=True;
    end
end;


Function SelectDB : Boolean;

Var DB : Pchar;

begin
  SelectDB:=False;
  If strlen(DBDatabase)=0 then 
    DB:='test'
  else
    DB:=dbDataBase;
  If mysql_select_db(DbSock,Db)<0 then
    begin
    seterror (mysql_error(DbSock));
    Writeln (stderr,'Couldn''t select database ',db,'.');
    writeln (stderr,DbError);
    exit;
    end;
  SelectDB:=True;
end;


Function EntryToAddValues (Const Entry : TEntry): Pchar;
{
  Convert a TCompanyEntry record to a sql values statement of the form
  ('name','address',...)
}

    
Procedure AddStringClause (Var P : pchar;Value : PChar;Comma : Boolean);

Var Work : Array[1..2048] of char;
    PP : Pchar;
    I : longint;

begin
  FillChar(Work,SizeOF(Work),#0);
  I:=1;
  If Comma then 
     begin
     Work[I]:=',';
     inc(i);
     end;
  Work[I]:='''';
  mysql_escape_string(@work[i+1],value,strlen(value));
  // length name contains enough space for ending quote 
  PP:=StrReAlloc(P,StrLen(P)+StrLen(@Work)+1);
  pp:=strEcopy(PP,@work);
  pp[0]:='''';
  pp[1]:=#0;
end;

Procedure AddIntegerClause (Var P : Pchar;Value : longint; Comma : Boolean);

Var PP : Pchar;
    Name : String;
    
begin
  Name:=IntToStr(Value)+#0;
  If Comma then 
    Name:=','+Name;
  PP:=StrReAlloc(P,StrLen(P)+length(Name)-1);
  strEcopy(PP,@name[1]);
end;

Var P,PP : Pchar;
    
begin
  P:=strtopchar('INSERT INTO bugs '+
  '(Title,Name,email,os,adddate,Fixdate,fixer,fixversion,category,status'+
  ',comment,Descr,prog) VALUES (');
  With Entry do
    begin
    AddStringClause (P,@title,False);
    AddStringClause (P,@Name,True);
    AddStringClause (P,@email,True);
    AddIntegerClause (P,ord(os),true);
    AddStringClause (P,@AddDate,True);
    AddStringClause (P,@Fixdate,True);
    AddStringClause (P,@fixer,True);
    AddStringClause (P,@fixVersion,True);
    AddIntegerClause (P,Ord(Category),true);
    AddIntegerClause (P,Ord(Status),true);
    AddStringClause (P,@Comment[1],true);
    AddStringClause (P,@Desc,True);
    AddStringClause (P,@Prog,True);
    end;
  PP:=StrReAlloc(P,Strlen(P)+1);
  PP[0]:=')';
  PP[1]:=#0;
  EntryToAddValues:=P;
end;
                              
Function AddEntry (Const Entr : TEntry) : Boolean;
{
  Adds an entry to the database
}
Var
    Query : PChar;

begin
  AddEntry:=False;
  If Not Connected then exit;
  If Not SelectDb then exit;
  Query:=EntryToAddValues (Entr);
  if mysql_query(DbSock,Query)<0 then
    begin
    SetError (mysql_error(dbSock));
    Writeln (stderr,'Insert failed : ',DbError);
    exit;
    end;
  StrDispose(Query);
  AddEntry:=True;
end;

Function EntryToUpdateValues (Const Entry : TEntry): Pchar;
{
  Convert a TCompanyEntry record to a sql values statement of the form
  UPDATE COMPANIES SET name='name',address='address',...)
}

    
Procedure AddStringClause (Var P : pchar;Value : PChar;Name : String;Comma : Boolean);

Var Work : Array[1..2048] of char;
    PP : Pchar;

begin
  FillChar(Work,SizeOF(Work),#0);
  Name:=Name+'=''';
  If Comma then 
    Name:=','+Name;
  Name:=Name+#0;
  mysql_escape_string(@work,value,strlen(value));
  // length name contains enough space for ending quote 
  PP:=StrReAlloc(P,StrLen(P)+StrLen(@Work)+length(Name));
  PP:=strEcopy(PP,@name[1]);
  pp:=strEcopy(PP,@work[1]);
  pp[0]:='''';
  pp[1]:=#0;
end;

Procedure AddIntegerClause (Var P : Pchar;Value : longint;Name : String; Comma : Boolean);

Var PP : Pchar;

begin
  If value=-1 then exit;
  If Comma then 
    Name:=','+Name;
  Name:=Name+'='+inttostr(Value)+#0;
  PP:=StrReAlloc(P,StrLen(P)+length(Name)-1);
  PP:=strEcopy(PP,@name[1]);
end;

Var  P,PL : Pchar;
 SelectCl : String;
    
begin
  P:=strtopchar('UPDATE bugs SET ');
  With Entry do
    begin
    AddStringClause  (P,@Title,'Title',False);
    AddStringClause  (P,@name,'Name',True);
    AddStringClause  (P,@email,'Email',True);
    AddIntegerClause (P,Ord(OS),'Os',True);
    AddStringClause  (P,@AddDate,'AddDate',True);
    AddStringClause  (P,@FixDate,'Fixdate',True);
    AddStringClause  (P,@Fixer,'Fixer',True);
    AddStringClause  (P,@FixVersion,'FixVersion',True);
    AddIntegerClause (P,Ord(Category),'Category',True);
    selectcl:=StatusNames[Status]+#0;
    AddStringClause (P,@SelectCl[1],'Status',True);
    AddStringClause  (P,@Comment,'Comment',True);
    AddStringClause  (P,@Desc,'Descr',True);
    AddStringClause  (P,@Prog,'Prog',True);
    end;
  SelectCl:=' WHERE BugId='+IntToStr(Entry.BugID)+#0;
  PL:=StrReAlloc (P,Strlen(P)+Length(SelectCl)-1);
  strcopy(PL,@selectcl[1]);
  EntryToUpdateValues:=P;
end;

Function ReplaceEntry (Const Entr : TEntry) : Boolean;

Var
    Query : PChar;

begin
  ReplaceEntry:=False;
  If Not Connected then exit;
  If Not SelectDb then exit;
  Query:=EntryToUpdateValues (Entr);
  if mysql_query(DbSock,Query)<0 then
    begin
    SetError (mysql_error(dbSock));
    Writeln (stderr,'Replace failed : ',DbError);
    end
  else
    ReplaceEntry:=True;
  StrDispose(Query);
end;

Function RemoveEntry (Const Entr : TEntry) : Boolean;
{
  Replaces  an entry in the database. The name and author fields
  are used to identify the entry
}
Var
    Query : String;

begin
  RemoveEntry:=False;
  query:='delete from bugs where (BugId='+inttostr(entr.bugid)+')'#0;
  If Not Connected then exit;
  If Not SelectDb then exit;
  if mysql_query(DbSock,PChar(@Query[1]))<0 then
    begin
    SetError (mysql_error(dbSock));
    Writeln (stderr,'Delete failed : ',DbError);
    exit;
    end;
  RemoveEntry:=True;
end;

Procedure RowBuf2Entry (RowBuf : TMySQL_Row; Var Entry : TEntry);
{
  Converts the result of a select * query to a data entry
}
Var code : integer;

begin
  With Entry do
    begin
    Val (strpas(Rowbuf[0]),bugid,code);
    strcopy(@Title,RowBuf[1]);
    strcopy(@Name,RowBuf[2]);
    strcopy(@Email,RowBuf[3]);
    os:=ToOs(strpas(RowBuf[4]));
    strcopy(@AddDate,RowBuf[5]);
    strcopy(@FixDate,RowBuf[6]);
    strcopy(@Fixer,RowBuf[7]);
    strcopy(@FixVersion,Rowbuf[8]);
    Category:=ToCategory(strpas(RowBuf[9]));
    Status:=ToStatus(strpas(RowBuf[10]));
    StrCopy(@Comment,rowbuf[11]);
    StrCopy(@Desc,rowbuf[12]);  
    StrCopy(@Prog,RowBuf[13]);
    end;
end;

Function EntryExists (BugId : longint; Var Entry : TEntry ): Boolean;
{
  Returns true if an entry exists, false in case of error.
  If An error occurred then DbError is set. If not, Entry is set to
  the record that was found.
}

Var Data : PMySQL_Res;
    EntData : TMySQL_ROW;
    Query : String;

begin
  EntryExists:=False;
  if DbError<>Nil then 
    begin
    STrDispose(DbError); 
    DbError:=Nil;
    end;
  query:='Select * from bugs where (BugId='+inttostr(bugid)+')'#0;
  if not connected then exit;
  if not selectdb then exit;
  if mysql_query(DbSock,pchar(@Query[1]))<0 then
    begin
    SetError (mysql_error(DbSock));
    Writeln (stderr,'Select query failed: ',dberror);
    exit;
    end;
  Data:=mysql_store_result(DbSocK);
  If Data=Nil then
    exit;
  EntData := mysql_fetch_row(Data);
  If EntData<>Nil then 
    begin
    EntryExists:=True;
    InitEntry(Entry);
    RowBuf2Entry(EntData,Entry);
    end;
  mysql_free_result(Data);
end;

Function GetEntries (Query : String; CallBack : TEntryCallBack) : boolean;
{
Gets all entries matching the Entr TEntry; All non-empty fields
of TEntry are used to construct an SQL Query. 
Each matching record is then passed in turn to Callback.
}

Var Data : PMySQL_Res;
    EntData : TMySQL_ROW;
    Entry : TEntry;
    
begin
  GetEntries:=False;
  if not connected then exit;
  if not selectdb then exit;
  Query:=Query+#0;
  if mysql_query(DbSock,pchar(@Query[1]))<0 then
    begin
    exit;
    end;
  Data:=mysql_store_result(DbSocK);
  If Data=Nil then
    begin
    SetError ('Query returned nil result.');
    exit;
    end;
  EntData := mysql_fetch_row(Data);
  InitEntry(Entry);
  While EntData<>Nil do 
    begin
    RowBuf2Entry (EntData,Entry);
    CallBack(Entry);
    EntData:=mysql_fetch_row(Data);
    end;
  mysql_free_result(Data);
  DoneEntry(Entry);
  GetEntries:=True;
end;

Function GetNewID : Longint;

Const Query : pchar = 'select MAX(BugId) from bugs';

Var Data : PMySQL_Res;
    EntData : TMySQL_ROW;
    S : String;
    code : integer;
    
begin
  GetNewId:=-1;
  if not connected then exit;
  if not selectdb then exit;
  if mysql_query(DbSock,Query)<0 then
    begin
    exit;
    end;
  Data:=mysql_store_result(DbSocK);
  If Data=Nil then
    begin
    SetError ('Query returned nil result.');
    exit;
    end;
  EntData := mysql_fetch_row(Data);
  If EntData[0]<>Nil then
    begin
    S:=Strpas(EntData[0]);
    val (S,GetNewId,Code);
    If Code<>0 then GetNewID:=-1 else GetNewId:=GetNewId+1;
    end; 
  mysql_free_result(Data);
end;
  

end.